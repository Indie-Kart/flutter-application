// ignore_for_file: must_be_immutable

part of 'email_bloc.dart';

/// Represents the state of Email in the application.
class EmailState extends Equatable {
  EmailState({
    this.emailController,
    this.emailModelObj,
  });

  TextEditingController? emailController;

  EmailModel? emailModelObj;

  @override
  List<Object?> get props => [
        emailController,
        emailModelObj,
      ];
  EmailState copyWith({
    TextEditingController? emailController,
    EmailModel? emailModelObj,
  }) {
    return EmailState(
      emailController: emailController ?? this.emailController,
      emailModelObj: emailModelObj ?? this.emailModelObj,
    );
  }
}
