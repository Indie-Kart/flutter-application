import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/mail_veri_screen/models/mail_veri_model.dart';
part 'mail_veri_event.dart';
part 'mail_veri_state.dart';

/// A bloc that manages the state of a MailVeri according to the event that is dispatched to it.
class MailVeriBloc extends Bloc<MailVeriEvent, MailVeriState> {
  MailVeriBloc(MailVeriState initialState) : super(initialState) {
    on<MailVeriInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MailVeriInitialEvent event,
    Emitter<MailVeriState> emit,
  ) async {}
}
