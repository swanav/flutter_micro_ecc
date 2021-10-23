// ignore_for_file: constant_identifier_names

import 'dart:typed_data';

/// Wrapper class for Ecdh operations.
class Ecdh {
  Ecdh();

  /// Generate a new Public/Private Key pair based on the curve
  EcdhKeyPair generateKeyPair(
    EcdhCurve curve,
  ) {
    throw UnimplementedError("Stub implementation");
  }

  /// Compute a shared secret basd on local private key and remote public key on the curve
  Uint8List computeSharedSecret(
    Uint8List private,
    Uint8List public,
    EcdhCurve curve,
  ) {
    throw UnimplementedError("Stub implementation");
  }
}

/// Container for a public/private key pair
class EcdhKeyPair {
  Uint8List privateKey;
  Uint8List publicKey;
  EcdhCurve curve;

  /// Create a new key pair
  EcdhKeyPair(this.privateKey, this.publicKey, this.curve);
}

/// Opaque pointers to Ecdh curves
class EcdhCurve {
  /// SECP160R1
  static const SECP160R1 = EcdhCurve._(1);

  /// SECP192R1
  static const SECP192R1 = EcdhCurve._(2);

  /// SECP224R1
  static const SECP224R1 = EcdhCurve._(3);

  /// SECP256R1
  static const SECP256R1 = EcdhCurve._(4);

  /// SECP256K1
  static const SECP256K1 = EcdhCurve._(5);

  // ignore: unused_field
  final int _curveId;

  const EcdhCurve._(this._curveId);
}
