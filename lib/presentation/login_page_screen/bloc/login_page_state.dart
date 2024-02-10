// ignore_for_file: must_be_immutable

part of 'login_page_bloc.dart';

/// Represents the state of LoginPage in the application.
class LoginPageState extends Equatable {
  LoginPageState({this.loginPageModelObj});

  LoginPageModel? loginPageModelObj;

  @override
  List<Object?> get props => [
        loginPageModelObj,
      ];
  LoginPageState copyWith({LoginPageModel? loginPageModelObj}) {
    return LoginPageState(
      loginPageModelObj: loginPageModelObj ?? this.loginPageModelObj,
    );
  }
}
