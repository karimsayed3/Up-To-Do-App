
import 'package:local_auth/local_auth.dart';
import 'package:local_auth_android/local_auth_android.dart';
import 'package:local_auth_ios/local_auth_ios.dart';

enum SupportState {
  unknown,
  supported,
  unsupported,
}

class LocalAuth{
  final LocalAuthentication _auth = LocalAuthentication();

  Future<bool> isDeviceSupported(){
  return _auth.isDeviceSupported();
}

  Future<bool> checkBiometrics(){
    return _auth.canCheckBiometrics;
  }


  Future<bool> authenticate() async {
    return _auth.authenticate(
        localizedReason: 'Let OS determine authentication method',
        options: const AuthenticationOptions(
          stickyAuth: true,
        ),
        authMessages:  const <AuthMessages>[
          AndroidAuthMessages(
            signInTitle: 'Oops! Biometric authentication required!',
            cancelButton: 'No thanks',
          ),
          IOSAuthMessages(
            cancelButton: 'No thanks',
          ),],);
  }
  Future<void> cancelAuthentication() async {
    await _auth.stopAuthentication();
  }

}
