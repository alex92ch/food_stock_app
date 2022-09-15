import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';

@freezed
class Stock with _$Stock {
  const Stock._();
  const factory Stock({
    @Default('') String id,
    @Default({}) Map<String, int> cupboard,
    @Default({}) Map<String, int> freezer,
    @Default({}) Map<String, int> fridge,
  }) = _Stock;
}
