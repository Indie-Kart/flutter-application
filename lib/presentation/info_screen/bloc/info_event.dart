// ignore_for_file: must_be_immutable

part of 'info_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Info widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class InfoEvent extends Equatable {}

/// Event that is dispatched when the Info widget is first created.
class InfoInitialEvent extends InfoEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends InfoEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent1 extends InfoEvent {
  ChangePasswordVisibilityEvent1({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends InfoEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
