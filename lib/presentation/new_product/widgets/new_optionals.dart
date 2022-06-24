import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class NewOptionals extends HookConsumerWidget {
  const NewOptionals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Beschreibung"),
            TextFormField(
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintStyle: TextStyle()),
              keyboardType: TextInputType.multiline,
              maxLines: 5,
              maxLength: 500,
            ),
            Row(
              children: [
                Column(
                  children: [
                    IconButton(
                      onPressed: () {}, //TODO needs handler
                      icon: const Icon(
                        Icons.camera_alt_rounded,
                        semanticLabel: "Foto hinzufügen",
                      ),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {}, //TODO needs handler
                  icon: const Icon(
                    Icons.qr_code_scanner_rounded,
                    semanticLabel: "Barcode scannen",
                  ),
                ),
              ],
            ),
          ],
        ),
        ElevatedButton(
          onPressed: () {
            //TODO add handler
          },
          style: ButtonStyle(),
          child: const Text("Produkt Speichern"),
        )
      ],
    );
  }
}
