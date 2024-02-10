// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [shoe_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ShoeModel extends Equatable {
  ShoeModel() {}

  ShoeModel copyWith() {
    return ShoeModel();
  }

  @override
  List<Object?> get props => [];
}
