import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/main.dart';
import 'package:whereisourcar/module_home/bloc/home_bloc.dart';
import 'package:whereisourcar/module_home/view/home_view.dart';
import 'package:whereisourcar/module_map/bloc/map_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ContextProvider.context = context;
    final mapBloc = MapBloc();
    final homeBloc = HomeBloc(
      client: context.read<GraphQLClient>(),
      mapBloc: mapBloc,
    );
    return MultiBlocProvider(providers: [
      BlocProvider(create: (context) => homeBloc..add(HomeEnteredEvent())),
      BlocProvider(create: (context) => mapBloc),
    ], child: const HomeView());
  }
}
