// ignore_for_file: must_be_immutable

part of 'catone_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CatoneContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CatoneContainerEvent extends Equatable {}

/// Event that is dispatched when the CatoneContainer widget is first created.
class CatoneContainerInitialEvent extends CatoneContainerEvent {
  @override
  List<Object?> get props => [];
}
