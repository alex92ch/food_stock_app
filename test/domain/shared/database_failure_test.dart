import 'package:flutter_test/flutter_test.dart';
import 'package:food_stock_app/domain/shared/database_failure.dart';

void main() {
  group('Domain Layer', () {
    test('DatabaseFailure model', () {
      DatabaseFailure dataAlreadyExists =
          const DatabaseFailure.dataAlreadyExists();
      DatabaseFailure insufficientPermissions =
          const DatabaseFailure.insufficientPermissions();
      DatabaseFailure requestedDocumentNotFound =
          const DatabaseFailure.requestedDocumentNotFound();
      DatabaseFailure unexpected = const DatabaseFailure.unexpected();

      expect(dataAlreadyExists, const DatabaseFailure.dataAlreadyExists());
      expect(insufficientPermissions,
          const DatabaseFailure.insufficientPermissions());
      expect(requestedDocumentNotFound,
          const DatabaseFailure.requestedDocumentNotFound());
      expect(unexpected, const DatabaseFailure.unexpected());
    });
  });
}
