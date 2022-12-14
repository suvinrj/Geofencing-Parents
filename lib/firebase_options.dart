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
    apiKey: 'AIzaSyCz4CrVHOmVl3AqhaiXBhrvFZn77rQte4Q',
    appId: '1:252959021740:web:0e884008a0ebd7c57b1d09',
    messagingSenderId: '252959021740',
    projectId: 'geofencing-parent',
    authDomain: 'geofencing-parent.firebaseapp.com',
    storageBucket: 'geofencing-parent.appspot.com',
    measurementId: 'G-GGNR43TS3M',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDSqxnRq62a4RbeQMR2z8RrCuqClX12OFQ',
    appId: '1:252959021740:android:c7895db603a0f9f17b1d09',
    messagingSenderId: '252959021740',
    projectId: 'geofencing-parent',
    storageBucket: 'geofencing-parent.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCrtZ6boDaHeMFon6j4382SqrEwbRksAo',
    appId: '1:252959021740:ios:18c2d11ee5ffb6647b1d09',
    messagingSenderId: '252959021740',
    projectId: 'geofencing-parent',
    storageBucket: 'geofencing-parent.appspot.com',
    iosClientId: '252959021740-bt6qk4tq65760cn8evk93cljqodibapm.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterAppTesting',
  );
}
