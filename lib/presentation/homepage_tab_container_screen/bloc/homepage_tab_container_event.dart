// ignore_for_file: must_be_immutable

part of 'homepage_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///HomepageTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class HomepageTabContainerEvent extends Equatable {}

/// Event that is dispatched when the HomepageTabContainer widget is first created.
class HomepageTabContainerInitialEvent extends HomepageTabContainerEvent {
  @override
  List<Object?> get props => [];
}
