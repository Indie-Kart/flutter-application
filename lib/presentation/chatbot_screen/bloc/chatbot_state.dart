// ignore_for_file: must_be_immutable

part of 'chatbot_bloc.dart';

/// Represents the state of Chatbot in the application.
class ChatbotState extends Equatable {
  ChatbotState({
    this.thankYouMessageController,
    this.chatbotModelObj,
  });

  TextEditingController? thankYouMessageController;

  ChatbotModel? chatbotModelObj;

  @override
  List<Object?> get props => [
        thankYouMessageController,
        chatbotModelObj,
      ];
  ChatbotState copyWith({
    TextEditingController? thankYouMessageController,
    ChatbotModel? chatbotModelObj,
  }) {
    return ChatbotState(
      thankYouMessageController:
          thankYouMessageController ?? this.thankYouMessageController,
      chatbotModelObj: chatbotModelObj ?? this.chatbotModelObj,
    );
  }
}
