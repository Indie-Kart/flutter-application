// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [ordered_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderedModel extends Equatable {
  OrderedModel() {}

  OrderedModel copyWith() {
    return OrderedModel();
  }

  @override
  List<Object?> get props => [];
}
