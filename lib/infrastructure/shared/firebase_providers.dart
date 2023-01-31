import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import 'package:food_stock_app/domain/shared/database_failure.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';

// Firebase
// final firebaseAuthProvider = Provider<FirebaseAuth>((ref) {
//   final instance = FirebaseAuth.instance;
//   // Set persistence for web to local. This is default on Native Devices
//   instance.setPersistence(Persistence.LOCAL);

//   return instance;
// });

final firebaseFirestoreProvider = Provider<FirebaseFirestore>((ref) {
  final instance = FirebaseFirestore.instance;
  return instance;
});
final firebaseMessageBackgroundProvider = Provider<FirebaseFirestore>((ref) {
  final instance = FirebaseMessaging.
  return instance;
});
final firebaseMessageForegroundProvider = Provider<FirebaseFirestore>((ref) {
  final instance = FirebaseMessaging.instance;
  return instance;
});


// final firebaseStorageProvider = Provider<FirebaseStorage>((ref) {
//   final instance = FirebaseStorage.instance;
//   return instance;
// });

// final firebasePerformanceProvider = Provider<FirebasePerformance>((ref) {
//   final instance = FirebasePerformance.instance;
//   return instance;
// });

// final firebaseAnalyticsProvider = Provider<FirebaseAnalytics>((ref) {
//   final instance = FirebaseAnalytics.instance;
//   return instance;
// });

// final firebaseCrashlyticsProvider = Provider<FirebaseCrashlytics>((ref) {
//   final instance = FirebaseCrashlytics.instance;
//   return instance;
// });

DatabaseFailure handleDatabaseFailure(Exception e) {
  if (e is FirebaseException) {
    if (e.code.contains('permission-denied')) {
      return const DatabaseFailure.insufficientPermissions();
    }
    if (e.code.contains("not-found")) {
      return const DatabaseFailure.requestedDocumentNotFound();
    } else {
      return const DatabaseFailure.unexpected();
    }
  } else {
    return const DatabaseFailure.unexpected();
  }
}
