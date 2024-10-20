import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisourcar/fragments.graphql.dart';
import 'package:whereisourcar/module_manage/list/bloc/car_list_bloc.dart';
import 'package:whereisourcar/module_manage/write/view/car_write_page.dart';

class CarListView extends StatelessWidget {
  const CarListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Moje auta'),
      ),
      body: BlocBuilder<CarListBloc, CarListState>(
        builder: (context, state) {
          if (state is CarListLoadingState || state is CarListInitial) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state is CarListIdleState) {
            return ListView.builder(
              itemBuilder: (ctx, i) => ListTile(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => CarWritePage(state.data[i]),
                  ),
                ),
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Stack(
                      children: [
                        Image.asset('assets/images/spz.png', height: 40),
                        Positioned(
                          left: 23,
                          child: Text(
                            state.data[i].licencePlate.split(' ').first,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        Positioned(
                          left: 100,
                          child: Text(
                            state.data[i].licencePlate.split(' ').last,
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                      width: _width(state.data[i].users?.length),
                      child: Stack(
                        children: _build(state.data[i].users),
                      ),
                    ),
                  ],
                ),
              ),
              shrinkWrap: true,
              itemCount: state.data.length,
            );
          }

          if (state is CarListErrorState) {
            return Center(child: Text(state.message));
          }

          throw Exception('Unknown state');
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const CarWritePage(null)),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }
}

double _width(int? length) {
  return (length ?? 0) * 40 - ((length ?? 1) - 1) * 16;
}

List<Widget> _build(List<Fragment$UserFragment?>? users) {
  final output = List<Widget>.empty(growable: true);
  if (users == null) return output;
  final offset = _width(users.length);
  for (var i = users.length - 1; i >= 0; i--) {
    if (users[i] == null) continue;
    output.add(
      Positioned(
        right: offset - i * 24 - 40,
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            users[i]!.avatarUrl!,
          ),
        ),
      ),
    );
  }

  return output;
}
