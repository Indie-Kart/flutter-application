// ignore_for_file: must_be_immutable

part of 'chatbot_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Chatbot widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatbotEvent extends Equatable {}

/// Event that is dispatched when the Chatbot widget is first created.
class ChatbotInitialEvent extends ChatbotEvent {
  @override
  List<Object?> get props => [];
}
