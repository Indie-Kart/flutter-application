// ignore_for_file: must_be_immutable

part of 'mail_veri_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MailVeri widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MailVeriEvent extends Equatable {}

/// Event that is dispatched when the MailVeri widget is first created.
class MailVeriInitialEvent extends MailVeriEvent {
  @override
  List<Object?> get props => [];
}
