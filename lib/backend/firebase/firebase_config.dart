import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDfqNsbZHZ46jLSWYCixr2RhNowe987Ibs",
            authDomain: "pummart-fc336.firebaseapp.com",
            projectId: "pummart-fc336",
            storageBucket: "pummart-fc336.appspot.com",
            messagingSenderId: "474879716971",
            appId: "1:474879716971:web:8ab4de1a1204f6921dcb2e",
            measurementId: "G-H7MTB297R9"));
  } else {
    await Firebase.initializeApp();
  }
}
