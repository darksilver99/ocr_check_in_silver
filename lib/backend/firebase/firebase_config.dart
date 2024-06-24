import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyADGmT3pjNyh4VZEJlYheWuH-H4uUhXVmc",
            authDomain: "o-c-r-check-in-m5w9po.firebaseapp.com",
            projectId: "o-c-r-check-in-m5w9po",
            storageBucket: "o-c-r-check-in-m5w9po.appspot.com",
            messagingSenderId: "426601418126",
            appId: "1:426601418126:web:bd20b1976635ca290368df"));
  } else {
    await Firebase.initializeApp();
  }
}
