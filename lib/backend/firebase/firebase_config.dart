import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAqV2xcr3pNyiwZDWvs9ri4ZckH54XLNTU",
            authDomain: "rackity-app.firebaseapp.com",
            projectId: "rackity-app",
            storageBucket: "rackity-app.appspot.com",
            messagingSenderId: "865610424482",
            appId: "1:865610424482:web:3a8892bf5cd8b0263eb7fb",
            measurementId: "G-DTS362GCXE"));
  } else {
    await Firebase.initializeApp();
  }
}
