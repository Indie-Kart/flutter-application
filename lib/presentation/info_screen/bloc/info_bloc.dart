import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:gaurav_s_application1/presentation/info_screen/models/info_model.dart';
part 'info_event.dart';
part 'info_state.dart';

/// A bloc that manages the state of a Info according to the event that is dispatched to it.
class InfoBloc extends Bloc<InfoEvent, InfoState> {
  InfoBloc(InfoState initialState) : super(initialState) {
    on<InfoInitialEvent>(_onInitialize);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<ChangePasswordVisibilityEvent1>(_changePasswordVisibility1);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<InfoState> emit,
  ) {
    emit(state.copyWith(isShowPassword: event.value));
  }

  _changePasswordVisibility1(
    ChangePasswordVisibilityEvent1 event,
    Emitter<InfoState> emit,
  ) {
    emit(state.copyWith(isShowPassword1: event.value));
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<InfoState> emit,
  ) {
    emit(state.copyWith(acceptTerms: event.value));
  }

  _onInitialize(
    InfoInitialEvent event,
    Emitter<InfoState> emit,
  ) async {
    emit(state.copyWith(
        firstNameController: TextEditingController(),
        lastNameController: TextEditingController(),
        passwordController: TextEditingController(),
        passwordController1: TextEditingController(),
        isShowPassword: true,
        isShowPassword1: true,
        acceptTerms: false));
  }
}
