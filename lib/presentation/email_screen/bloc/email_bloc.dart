import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/email_screen/models/email_model.dart';
part 'email_event.dart';
part 'email_state.dart';

/// A bloc that manages the state of a Email according to the event that is dispatched to it.
class EmailBloc extends Bloc<EmailEvent, EmailState> {
  EmailBloc(EmailState initialState) : super(initialState) {
    on<EmailInitialEvent>(_onInitialize);
  }

  _onInitialize(
    EmailInitialEvent event,
    Emitter<EmailState> emit,
  ) async {
    emit(state.copyWith(emailController: TextEditingController()));
  }
}
