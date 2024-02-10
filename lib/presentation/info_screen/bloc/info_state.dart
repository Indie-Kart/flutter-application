// ignore_for_file: must_be_immutable

part of 'info_bloc.dart';

/// Represents the state of Info in the application.
class InfoState extends Equatable {
  InfoState({
    this.firstNameController,
    this.lastNameController,
    this.passwordController,
    this.passwordController1,
    this.isShowPassword = true,
    this.isShowPassword1 = true,
    this.acceptTerms = false,
    this.infoModelObj,
  });

  TextEditingController? firstNameController;

  TextEditingController? lastNameController;

  TextEditingController? passwordController;

  TextEditingController? passwordController1;

  InfoModel? infoModelObj;

  bool isShowPassword;

  bool isShowPassword1;

  bool acceptTerms;

  @override
  List<Object?> get props => [
        firstNameController,
        lastNameController,
        passwordController,
        passwordController1,
        isShowPassword,
        isShowPassword1,
        acceptTerms,
        infoModelObj,
      ];
  InfoState copyWith({
    TextEditingController? firstNameController,
    TextEditingController? lastNameController,
    TextEditingController? passwordController,
    TextEditingController? passwordController1,
    bool? isShowPassword,
    bool? isShowPassword1,
    bool? acceptTerms,
    InfoModel? infoModelObj,
  }) {
    return InfoState(
      firstNameController: firstNameController ?? this.firstNameController,
      lastNameController: lastNameController ?? this.lastNameController,
      passwordController: passwordController ?? this.passwordController,
      passwordController1: passwordController1 ?? this.passwordController1,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isShowPassword1: isShowPassword1 ?? this.isShowPassword1,
      acceptTerms: acceptTerms ?? this.acceptTerms,
      infoModelObj: infoModelObj ?? this.infoModelObj,
    );
  }
}
