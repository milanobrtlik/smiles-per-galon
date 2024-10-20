import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/fragments.graphql.dart';
import 'package:whereisourcar/module_manage/write/bloc/car_write_bloc.dart';
import 'package:whereisourcar/module_manage/write/view/car_write_view.dart';

class CarWritePage extends StatelessWidget {
  const CarWritePage(this.fragment$carList, {Key? key}) : super(key: key);

  final Fragment$CarList? fragment$carList;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CarWriteBloc(context.read<GraphQLClient>())
        ..add(CarWriteOpenedEvent(fragment$carList)),
      child: const CarWriteView(),
    );
  }
}
