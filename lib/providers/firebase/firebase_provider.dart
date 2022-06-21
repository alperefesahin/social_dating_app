import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:social_dating_app/infrastructure/auth/firebase_auth_service.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>(
  (ref) => FirebaseAuth.instance,
);

final firestoreProvider = Provider<FirebaseFirestore>(
  (ref) => FirebaseFirestore.instance,
);

final firebaseStorage = Provider<FirebaseStorage>(
  (ref) => FirebaseStorage.instance,
);

final authRepositoryProvider = Provider<FirebaseAuthService>(
  (ref) => FirebaseAuthService(
    ref.read,
  ),
);
