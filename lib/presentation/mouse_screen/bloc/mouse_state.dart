// ignore_for_file: must_be_immutable

part of 'mouse_bloc.dart';

/// Represents the state of Mouse in the application.
class MouseState extends Equatable {
  MouseState({this.mouseModelObj});

  MouseModel? mouseModelObj;

  @override
  List<Object?> get props => [
        mouseModelObj,
      ];
  MouseState copyWith({MouseModel? mouseModelObj}) {
    return MouseState(
      mouseModelObj: mouseModelObj ?? this.mouseModelObj,
    );
  }
}
