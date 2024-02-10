import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/chatbot_screen/models/chatbot_model.dart';
part 'chatbot_event.dart';
part 'chatbot_state.dart';

/// A bloc that manages the state of a Chatbot according to the event that is dispatched to it.
class ChatbotBloc extends Bloc<ChatbotEvent, ChatbotState> {
  ChatbotBloc(ChatbotState initialState) : super(initialState) {
    on<ChatbotInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatbotInitialEvent event,
    Emitter<ChatbotState> emit,
  ) async {
    emit(state.copyWith(
      thankYouMessageController: TextEditingController(),
    ));
  }
}
