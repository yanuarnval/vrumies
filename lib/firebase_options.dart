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
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyBC8fdpWN1miVjZoUGMXSRWMGQlHnOzD7c',
    appId: '1:899540093795:web:b0b568577f2b4a335fa156',
    messagingSenderId: '899540093795',
    projectId: 'vrumies-mac',
    authDomain: 'vrumies-mac.firebaseapp.com',
    storageBucket: 'vrumies-mac.appspot.com',
    measurementId: 'G-4D8SC4JG6V',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAxWZIdueZ1BrvyoDDXrI35SJOa9jpme_U',
    appId: '1:899540093795:android:08587273cfd185415fa156',
    messagingSenderId: '899540093795',
    projectId: 'vrumies-mac',
    storageBucket: 'vrumies-mac.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJmFnARcbNLNmZGj_wTR350YR3yGYRqcc',
    appId: '1:899540093795:ios:15baa38e2adb02545fa156',
    messagingSenderId: '899540093795',
    projectId: 'vrumies-mac',
    storageBucket: 'vrumies-mac.appspot.com',
    androidClientId: '899540093795-925hhcfl5lgjb4a208hcpvqndo0e3hds.apps.googleusercontent.com',
    iosClientId: '899540093795-rv730pt7iah6k9v4kqgo4sjo8hepj1vv.apps.googleusercontent.com',
    iosBundleId: 'com.example.vrumies',
  );
}
