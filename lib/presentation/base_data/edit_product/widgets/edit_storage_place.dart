import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditStoragePlace extends HookConsumerWidget {
  final ValueNotifier<String> _storagePlace;
  const EditStoragePlace(this._storagePlace, {Key? key}) : super(key: key);

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
              RadioListTile<String>(
                title: const Text("Kühlschrank"),
                value: "fridge",
                groupValue: _storagePlace.value,
                onChanged: (_) {
                  _storagePlace.value = _!;
                },
              ),
              RadioListTile<String>(
                title: const Text("Tiefkühler"),
                value: "freezer",
                groupValue: _storagePlace.value,
                onChanged: (_) {
                  _storagePlace.value = _!;
                },
              ),
              RadioListTile<String>(
                title: const Text("Schrank"),
                value: "cupboard",
                groupValue: _storagePlace.value,
                onChanged: (_) {
                  _storagePlace.value = _!;
                },
              )
            ],
          ),
        ),
      ],
    );
  }
}
