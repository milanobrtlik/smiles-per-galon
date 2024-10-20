import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:whereisourcar/module_manage/write/bloc/car_write_bloc.dart';

class DialogEditLicencePlate extends StatelessWidget {
  const DialogEditLicencePlate(this.text, {Key? key}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    final controller = TextEditingController(text: text);
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Upravit SPZ',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 8),
            TextField(
              controller: controller,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'SPZ',
              ),
            ),
            const SizedBox(height: 6),
            FilledButton(
              onPressed: () {
                context
                    .read<CarWriteBloc>()
                    .add(CarWriteLicensePlateChangedEvent(controller.text));
                Navigator.of(context).maybePop();
              },
              child: const Text('Hotovo'),
            ),
          ],
        ),
      ),
    );
  }
}
