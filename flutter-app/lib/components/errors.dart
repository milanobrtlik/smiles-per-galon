import 'package:flutter/material.dart';

class ErrorScaffold extends StatelessWidget {
  const ErrorScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Text('Při načítání obsahu došlo k chybě.'),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil('/', (_) => false),
              child: const Text('Restartovat'),
            ),
          ],
        ),
      ),
    );
  }
}
