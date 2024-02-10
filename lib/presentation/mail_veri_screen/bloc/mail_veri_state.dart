// ignore_for_file: must_be_immutable

part of 'mail_veri_bloc.dart';

/// Represents the state of MailVeri in the application.
class MailVeriState extends Equatable {
  MailVeriState({this.mailVeriModelObj});

  MailVeriModel? mailVeriModelObj;

  @override
  List<Object?> get props => [
        mailVeriModelObj,
      ];
  MailVeriState copyWith({MailVeriModel? mailVeriModelObj}) {
    return MailVeriState(
      mailVeriModelObj: mailVeriModelObj ?? this.mailVeriModelObj,
    );
  }
}
