import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "API FIREBASE XXXXX",
            authDomain: "sisgestaoresiduo.firebaseapp.com",
            projectId: "sisgestaoresiduo",
            storageBucket: "sisgestaoresiduo.firebasestorage.app",
            messagingSenderId: "1009146118180",
            appId: "1:1009146118180:web:8b4dbef9acecb13fe818b1"));
  } else {
    await Firebase.initializeApp();
  }
}
