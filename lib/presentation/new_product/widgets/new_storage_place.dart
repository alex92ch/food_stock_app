import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewStoragePlace extends HookConsumerWidget {
  const NewStoragePlace({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Lagerplatz"),
        SizedBox(
          height: 200,
          child: ListView(
            children: [
              RadioListTile(
                title: const Text("Kühlschrank"),
                value: 1,
                groupValue: 2,
                onChanged: (_) {}, //TODO needs handler
              ),
              RadioListTile(
                title: const Text("Tiefkühler"),
                value: 1,
                groupValue: 2,
                onChanged: (_) {}, //TODO needs handler
              ),
              RadioListTile(
                title: const Text("Schrank"),
                value: 1,
                groupValue: 2,
                onChanged: (_) {}, //TODO needs handler
              )
            ],
          ),
        ),
      ],
    );
  }
}
