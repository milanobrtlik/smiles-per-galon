import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';

import '../../components/raster_map.dart';

class PositionInsertView extends StatefulWidget {
  const PositionInsertView({Key? key}) : super(key: key);

  @override
  State<PositionInsertView> createState() => _PositionInsertViewState();
}

class _PositionInsertViewState extends State<PositionInsertView> {
  final controller = MapController(
    location: const LatLng(35.68, 51.41),
    zoom: 6,
  );

  void _gotoDefault() {
    controller.center = const LatLng(49.2022, 16.5779);
    controller.zoom = 14;
    setState(() {});
  }

  void _onDoubleTap(MapTransformer transformer, Offset position) {
    const delta = 0.5;
    final zoom = clamp(controller.zoom + delta, 2, 18);

    transformer.setZoomInPlace(zoom, position);
    setState(() {});
  }

  Offset? _dragStart;
  double _scaleStart = 1.0;

  void _onScaleStart(ScaleStartDetails details) {
    _dragStart = details.focalPoint;
    _scaleStart = 1.0;
  }

  void _onScaleUpdate(ScaleUpdateDetails details, MapTransformer transformer) {
    final scaleDiff = details.scale - _scaleStart;
    _scaleStart = details.scale;

    if (scaleDiff > 0) {
      controller.zoom += 0.02;
      setState(() {});
    } else if (scaleDiff < 0) {
      controller.zoom -= 0.02;
      if (controller.zoom < 1) {
        controller.zoom = 1;
      }
      setState(() {});
    } else {
      final now = details.focalPoint;
      var diff = now - _dragStart!;
      _dragStart = now;
      final h = transformer.constraints.maxHeight;

      final vp = transformer.getViewport();
      if (diff.dy < 0 && vp.bottom - diff.dy < h) {
        diff = Offset(diff.dx, 0);
      }

      if (diff.dy > 0 && vp.top - diff.dy > 0) {
        diff = Offset(diff.dx, 0);
      }

      transformer.drag(diff.dx, diff.dy);
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Stack(
        children: [
          MapLayout(
            controller: controller,
            builder: (context, transformer) {
              return GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTapUp: (details) =>
                    print(transformer.controller.center.latitude),
                onDoubleTapDown: (details) => _onDoubleTap(
                  transformer,
                  details.localPosition,
                ),
                onScaleStart: _onScaleStart,
                onScaleUpdate: (details) =>
                    _onScaleUpdate(details, transformer),
                child: Listener(
                  behavior: HitTestBehavior.opaque,
                  onPointerSignal: (event) {
                    if (event is PointerScrollEvent) {
                      final delta = event.scrollDelta.dy / -1000.0;
                      final zoom = clamp(controller.zoom + delta, 2, 18);

                      transformer.setZoomInPlace(zoom, event.localPosition);
                      setState(() {});
                    }
                  },
                  child: Stack(
                    children: [
                      TileLayer(
                        builder: (context, x, y, z) {
                          final tilesInZoom = pow(2.0, z).floor();

                          while (x < 0) {
                            x += tilesInZoom;
                          }
                          while (y < 0) {
                            y += tilesInZoom;
                          }

                          x %= tilesInZoom;
                          y %= tilesInZoom;

                          return CachedNetworkImage(
                            imageUrl: google(z, x, y),
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      CustomPaint(
                        painter: ViewportPainter(
                          transformer.getViewport(),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Center(
            child: Image.asset(
              'assets/images/dot_pinlet-2-medium.png',
              width: 48,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _gotoDefault,
        tooltip: 'My Location',
        child: const Icon(Icons.my_location),
      ),
    );
  }
}

double clamp(double x, double min, double max) {
  if (x < min) x = min;
  if (x > max) x = max;

  return x;
}

String google(int z, int x, int y) {
  //Google Maps
  final url =
      'https://www.google.com/maps/vt/pb=!1m4!1m3!1i$z!2i$x!3i$y!2m3!1e0!2sm!3i420120488!3m7!2sen!5e1105!12m4!1e68!2m2!1sset!2sRoadmap!4e0!5m1!1e0!23i4111425';

  return url;
}
