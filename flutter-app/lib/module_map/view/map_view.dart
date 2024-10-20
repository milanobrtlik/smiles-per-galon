import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:latlng/latlng.dart';
import 'package:map/map.dart';
import 'package:whereisourcar/module_home/graphql/home.graphql.dart';
import 'package:whereisourcar/module_map/bloc/map_bloc.dart';

class MapView extends StatelessWidget {
  const MapView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MapBloc, MapState>(
      builder: (context, state) {
        if (state.controller == null) {
          return const Center(child: CircularProgressIndicator());
        }
        return MapLayout(
          controller: state.controller!,
          builder: (context, transformer) => GestureDetector(
            behavior: HitTestBehavior.opaque,
            onDoubleTapDown: (details) => context
                .read<MapBloc>()
                .add(MapDoubleTapEvent(transformer, details.localPosition)),
            onScaleStart: (details) =>
                context.read<MapBloc>().add(MapScaleStartEvent(details)),
            onScaleUpdate: (details) => context
                .read<MapBloc>()
                .add(MapScaleUpdateEvent(details, transformer)),
            child: Listener(
              behavior: HitTestBehavior.opaque,
              onPointerSignal: (event) => context
                  .read<MapBloc>()
                  .add(MapPointerSignalEvent(event, transformer)),
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
                        imageUrl: _provideUrl(z, x, y),
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  if (state.myPosition != null)
                    Positioned(
                      left: transformer.toOffset(state.myPosition!).dx - 24,
                      top: transformer.toOffset(state.myPosition!).dy - 24,
                      width: 48,
                      height: 48,
                      child: GestureDetector(
                        child: const Icon(
                          Icons.radio_button_checked,
                          color: Color.fromARGB(255, 66, 134, 245),
                          size: 32,
                        ),
                      ),
                    ),
                  for (Query$home$carList car in state.pins ?? []) ...[
                    Positioned(
                      left: transformer
                              .toOffset(LatLng(
                                  car.lastPosition!.location.coordinates!.lat,
                                  car.lastPosition!.location.coordinates!.lon))
                              .dx -
                          24,
                      top: transformer
                              .toOffset(LatLng(
                                  car.lastPosition!.location.coordinates!.lat,
                                  car.lastPosition!.location.coordinates!.lon))
                              .dy -
                          48,
                      width: 48,
                      height: 48,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/dot_pinlet-2-medium.png',
                        ),
                        onTap: () => showBottomSheet(
                          context: context,
                          builder: (_) => CachedNetworkImage(
                            imageUrl:
                                'https://www.hdcarwallpapers.com/download/2011_bmw_concept_car_3-1920x1200.jpg',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

String _provideUrl(int z, int x, int y) {
  final urls = [
    'https://a.tile.openstreetmap.org/$z/$x/$y.png',
    'https://b.tile.openstreetmap.org/$z/$x/$y.png',
    'https://c.tile.openstreetmap.org/$z/$x/$y.png',
  ];

  return urls[0];
  // return urls[Random().nextInt(2)]; // NetworkImageCached is broken by randomizing urls
}
