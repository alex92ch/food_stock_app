import 'package:freezed_annotation/freezed_annotation.dart';

part 'stock.freezed.dart';

@freezed
class Stock with _$Stock {
  const Stock._();
  const factory Stock({
    @Default('') String id,
    @Default({}) Map<String, int> cupboardList,
    @Default({}) Map<String, int> freezerList,
    @Default({}) Map<String, int> fridgeList,
  }) = _Stock;
}
