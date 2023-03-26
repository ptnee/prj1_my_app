// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCJ2TVRXcobqC9a-2FOkUQTgcsy8FEZ3wo',
    appId: '1:33435635190:web:740dd6e42163148a380bd7',
    messagingSenderId: '33435635190',
    projectId: 'my-app-31e2d',
    authDomain: 'my-app-31e2d.firebaseapp.com',
    storageBucket: 'my-app-31e2d.appspot.com',
    measurementId: 'G-XRYL2SL5QE',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC4fRGSlCQx9IYtMMgV0LgtAfIQBfDNbjU',
    appId: '1:33435635190:android:4177dc91894cc510380bd7',
    messagingSenderId: '33435635190',
    projectId: 'my-app-31e2d',
    storageBucket: 'my-app-31e2d.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcCvB8Vu0POmrA-4O33lZO6lMdmyjZTGc',
    appId: '1:33435635190:ios:f9b2a27dd2fcf53b380bd7',
    messagingSenderId: '33435635190',
    projectId: 'my-app-31e2d',
    storageBucket: 'my-app-31e2d.appspot.com',
    iosClientId: '33435635190-rv0vpf1rq90t4ck1daqcrl96orskphu0.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCcCvB8Vu0POmrA-4O33lZO6lMdmyjZTGc',
    appId: '1:33435635190:ios:f9b2a27dd2fcf53b380bd7',
    messagingSenderId: '33435635190',
    projectId: 'my-app-31e2d',
    storageBucket: 'my-app-31e2d.appspot.com',
    iosClientId: '33435635190-rv0vpf1rq90t4ck1daqcrl96orskphu0.apps.googleusercontent.com',
    iosBundleId: 'com.example.myApp',
  );
}