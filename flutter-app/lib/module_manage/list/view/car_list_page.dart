import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/module_manage/list/bloc/car_list_bloc.dart';
import 'package:whereisourcar/module_manage/list/view/car_list_view.dart';

class CarListPage extends StatelessWidget {
  const CarListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarListBloc(
        context.read<GraphQLClient>(),
      )..add(CarListEnteredEvent()),
      child: const CarListView(),
    );
  }
}
