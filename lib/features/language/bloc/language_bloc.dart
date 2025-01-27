import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:clean_code_flutter/core/l10n/l10n.dart';

part 'language_event.dart';
part 'language_state.dart';

class LanguageBloc extends Bloc<LanguageEvent, LanguageState> {
  LanguageBloc() : super(LanguageInitialState()) {
    on<LanguageEvent>((event, emit) {
      if (!L10n.all.contains(event.locale)) return;
      emit(LanguageChangedState(locale: event.locale));
    });
  }
}
