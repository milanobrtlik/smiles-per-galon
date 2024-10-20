import 'package:flutter/material.dart';

class LoadingScaffoldAppBar extends StatelessWidget {
  const LoadingScaffoldAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
