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
    apiKey: 'AIzaSyAtD9PBAec5fZ1eVEtXZOZcJtBM8bifDb0',
    appId: '1:501252857692:web:b277146805f8da9e1e2b99',
    messagingSenderId: '501252857692',
    projectId: 'myappflutter-233f1',
    authDomain: 'myappflutter-233f1.firebaseapp.com',
    storageBucket: 'myappflutter-233f1.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyBL2Kebff-M65DlcE0xe7apW3nFAGNyoA0',
    appId: '1:501252857692:android:e52b4c90f1d20a871e2b99',
    messagingSenderId: '501252857692',
    projectId: 'myappflutter-233f1',
    storageBucket: 'myappflutter-233f1.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDG0bPXWwJmNEeJQAdiBrQRgT53zOUgeaU',
    appId: '1:501252857692:ios:8adc04f64ce495311e2b99',
    messagingSenderId: '501252857692',
    projectId: 'myappflutter-233f1',
    storageBucket: 'myappflutter-233f1.appspot.com',
    iosClientId:
        '501252857692-ulo5pjll9jkijavm6tc50ibpcvpi9b9o.apps.googleusercontent.com',
    iosBundleId: 'com.example.myappt',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDG0bPXWwJmNEeJQAdiBrQRgT53zOUgeaU',
    appId: '1:501252857692:ios:8adc04f64ce495311e2b99',
    messagingSenderId: '501252857692',
    projectId: 'myappflutter-233f1',
    storageBucket: 'myappflutter-233f1.appspot.com',
    iosClientId:
        '501252857692-ulo5pjll9jkijavm6tc50ibpcvpi9b9o.apps.googleusercontent.com',
    iosBundleId: 'com.example.myappt',
  );
}