export 'src/stub/ecdh.dart'
    if (dart.library.io) 'src/native/ecdh.dart'
    if (dart.library.html) 'src/web/ecdh.dart';
