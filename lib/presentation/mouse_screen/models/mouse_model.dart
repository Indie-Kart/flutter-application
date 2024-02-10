// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [mouse_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class MouseModel extends Equatable {
  MouseModel() {}

  MouseModel copyWith() {
    return MouseModel();
  }

  @override
  List<Object?> get props => [];
}
