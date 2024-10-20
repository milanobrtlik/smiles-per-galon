import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisourcar/module_manage/write/bloc/car_write_bloc.dart';
import 'package:whereisourcar/module_manage/write/view/dialog_edit_licence_plate.dart';

class CarWriteView extends StatelessWidget {
  const CarWriteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarWriteBloc, CarWriteState>(
      builder: (_, state) {
        if (state is CarWriteIdleState) {
          return Scaffold(
            appBar: AppBar(
              title: Text(
                (state.car?.licencePlate != null) ? 'Upravit' : 'Vytvořit',
              ),
              centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: () => showDialog(
                        context: context,
                        builder: (_) => BlocProvider.value(
                          value: context.read<CarWriteBloc>(),
                          child:
                              DialogEditLicencePlate(state.car?.licencePlate),
                        ),
                      ),
                      child: Stack(
                        children: [
                          Image.asset('assets/images/spz.png', height: 80),
                          Positioned(
                            top: 10,
                            left: 53,
                            child: Text(
                              state.car?.licencePlate.split(' ').first ?? '',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 208,
                            child: Text(
                              state.car?.licencePlate.split(' ').last ?? '',
                              style: Theme.of(context).textTheme.displayLarge,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Sdíleno s uživateli',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 8),
                  GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                    ),
                    itemBuilder: (_, i) {
                      if ((state.car?.users?.length ?? 1) > i) {
                        return CircleAvatar(
                          backgroundImage: CachedNetworkImageProvider(
                            state.car!.users![i]!.avatarUrl!,
                          ),
                        );
                      } else {
                        return CircleAvatar(
                          child: Icon(
                            Icons.person_add,
                            size: 48,
                            color: Theme.of(context).colorScheme.onBackground,
                          ),
                        );
                      }
                    },
                    itemCount: (state.car?.users?.length ?? 0) + 1,
                    shrinkWrap: true,
                  ),
                ],
              ),
            ),
          );
        }

        if (state is CarWriteInitialState) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }

        if (state is CarWriteErrorState) {
          return Scaffold(
            body: Center(
              child: Text(state.message),
            ),
          );
        }

        throw Exception('Unknown state');
      },
    );
  }
}
