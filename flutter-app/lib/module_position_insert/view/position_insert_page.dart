import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphql/client.dart';
import 'package:whereisourcar/module_position_insert/bloc/position_history_insert_bloc.dart';
import 'position_insert_view.dart';

class PositionInsertPage extends StatelessWidget {
  const PositionInsertPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PositionHistoryInsertBloc(
        context.read<GraphQLClient>(),
      ),
      child: const PositionInsertView(),
    );
  }
}
