import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:whereisourcar/module_home/bloc/home_bloc.dart';
import 'package:whereisourcar/module_map/view/map_view.dart';
import 'package:whereisourcar/module_position_insert/view/position_insert_page.dart';
import 'package:whereisourcar/module_profile_modal/view/profile_modal_page.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) => const MapView(),
          ),
          Positioned(
            top: 24,
            right: 16,
            child: InkWell(
              onTap: () => showDialog(
                context: context,
                builder: (context) => const ProfileModalPage(),
              ),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.background,
                backgroundImage: const CachedNetworkImageProvider(
                  'https://lh3.googleusercontent.com/a/AGNmyxYQuosNUNg94OM_k_GoYLohiECWQ453je6DKMP8Yg=s96-c',
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 16,
            right: 16,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  constraints: const BoxConstraints(minWidth: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  highlightElevation: 0,
                  child: const Icon(Icons.travel_explore),
                ),
                const SizedBox(height: 12),
                RawMaterialButton(
                  onPressed: () {},
                  shape: const CircleBorder(),
                  fillColor: Colors.white,
                  padding: const EdgeInsets.all(15.0),
                  constraints: const BoxConstraints(minWidth: 0),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  highlightElevation: 0,
                  child: const Icon(Icons.my_location),
                ),
                const SizedBox(height: 12),
                FloatingActionButton(
                  onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => const PositionInsertPage(),
                    ),
                  ),
                  child: const Icon(Icons.add_location_alt_outlined),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
