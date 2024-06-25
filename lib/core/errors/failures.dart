abstract class Failure {}

class SplashFailure extends Failure {
  final String message;

  SplashFailure({required this.message});
}

class LoginFailure extends Failure {
  final String message;

  LoginFailure({required this.message});
}

class CryptoWalletFailure extends Failure {
  final String message;

  CryptoWalletFailure({required this.message});
}

class PasswordResetFailure extends Failure {
  final String message;

  PasswordResetFailure({required this.message});
}

class RegisterFailure extends Failure {
  final String message;

  RegisterFailure({required this.message});
}

class HomeFailure extends Failure {
  final String message;

  HomeFailure({required this.message});
}

class ProfileFailure extends Failure {
  final String message;

  ProfileFailure({required this.message});
}

class TakeOutFailure extends Failure {
  final String message;

  TakeOutFailure({required this.message});
}

class RefillFailure extends Failure {
  final String message;

  RefillFailure({required this.message});
}

class AccountsFailure extends Failure {
  final String message;

  AccountsFailure({required this.message});
}

class NotificationsFailure extends Failure {
  final String message;

  NotificationsFailure({required this.message});
}

class SendMoneyFailure extends Failure {
  final String message;

  SendMoneyFailure({required this.message});
}

class ChangeFailure extends Failure {
  final String message;

  ChangeFailure({required this.message});
}

class OnboardingFailure extends Failure {
  final String message;

  OnboardingFailure({required this.message});
}

class UpdatAccountsFailure extends Failure {
  final String message;

  UpdatAccountsFailure({required this.message});
}

class CardsFailure extends Failure {
  final String message;

  CardsFailure({required this.message});
}

class AlliesFailure extends Failure {
  final String message;

  AlliesFailure({required this.message});
}

class TreebuTokensFailure extends Failure {
  final String message;

  TreebuTokensFailure({required this.message});
}

class SupportFailure extends Failure {
  final String message;

  SupportFailure({required this.message});
}

class FiatCodeFailure extends Failure {
  final String message;

  FiatCodeFailure({required this.message});
}

class OtpVerificationFailure extends Failure {
  final String message;

  OtpVerificationFailure({required this.message});
}

class ApprobeFailure extends Failure {
  final String message;

  ApprobeFailure({required this.message});
}
