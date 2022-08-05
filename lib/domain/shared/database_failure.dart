import 'package:freezed_annotation/freezed_annotation.dart';
part 'database_failure.freezed.dart';

// Abstract class for database failures
@freezed
class DatabaseFailure with _$DatabaseFailure {
  const factory DatabaseFailure.unexpected() = Unexpected;
  const factory DatabaseFailure.insufficientPermissions() =
      InsufficientPermissions;
  const factory DatabaseFailure.requestedDocumentNotFound() = DocNotFound;
  const factory DatabaseFailure.dataAlreadyExists() = DataExists;
}
