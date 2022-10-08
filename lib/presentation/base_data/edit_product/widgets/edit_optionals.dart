import 'package:barcode_scan2/barcode_scan2.dart';
import 'package:flutter/material.dart';
import 'package:food_stock_app/domain/base_data/product.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EditOptionals extends HookConsumerWidget {
  final ValueNotifier<Product> product;
  final ValueNotifier<GlobalKey<FormState>> formKey;
  const EditOptionals(this.product, this.formKey, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int duration = 4;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text("Beschreibung"),
        TextFormField(
          initialValue: product.value.description,
          onChanged: (value) {
            product.value = product.value.copyWith(description: value);
          },
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
              onPressed: () async {
                final scaffoldmessenger = ScaffoldMessenger.of(context);
                try {
                  ScanResult scanResult = await BarcodeScanner.scan();
                  scanResult.type == ResultType.Error
                      ? {
                          scaffoldmessenger.clearSnackBars(),
                          scaffoldmessenger.showSnackBar(
                            SnackBar(
                              content: Text('Fehler: ${scanResult.rawContent}'),
                              margin: const EdgeInsets.all(10),
                              duration: Duration(seconds: duration),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15.0, vertical: 10.0),
                              elevation: 6,
                              behavior: SnackBarBehavior.floating,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                          )
                        }
                      : {
                          product.value = product.value
                              .copyWith(barcode: scanResult.rawContent)
                        };
                } on Exception catch (e) {
                  scaffoldmessenger.clearSnackBars();
                  scaffoldmessenger.showSnackBar(
                    SnackBar(
                      content: Text('Fehler: $e'),
                      margin: const EdgeInsets.all(10),
                      duration: Duration(seconds: duration),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15.0, vertical: 10.0),
                      elevation: 6,
                      behavior: SnackBarBehavior.floating,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  );
                }
              },
              icon: const Icon(
                Icons.qr_code_scanner_rounded,
                semanticLabel: "Barcode scannen",
              ),
            ),
          ],
        ),
      ],
    );
  }
}
