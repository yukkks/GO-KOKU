import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAY5RYXKlL2tHUinD2ZnHeZ_asUEwqkQ-E",
            authDomain: "go-koku-uakybm.firebaseapp.com",
            projectId: "go-koku-uakybm",
            storageBucket: "go-koku-uakybm.appspot.com",
            messagingSenderId: "765604367729",
            appId: "1:765604367729:web:72d5ce08abaf0d3893fad0"));
  } else {
    await Firebase.initializeApp();
  }
}
