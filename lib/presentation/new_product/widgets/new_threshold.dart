import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewThreshold extends HookConsumerWidget {
  const NewThreshold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Schwellwert",
          ),
        )
      ],
    );
  }
}
