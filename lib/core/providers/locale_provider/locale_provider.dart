import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:sonnaa/core/providers/locale_provider/locale_states.dart';
import 'package:sonnaa/core/services/network/cache_helper.dart';
import 'package:sonnaa/l10n/l10n.dart';

class LocaleProvider extends Cubit<LocaleStates> {
  LocaleProvider() : super(LocaleInitialState());

  Locale? _locale;

  Locale? get locale => _locale;

  void setLocale(String? value) {
    if (value == "ar" || value == null) {
      _locale = L10n.all[0];
      CacheHelper.setData("Locale", "ar");
    } else if (value == "en") {
      _locale = L10n.all[1];
      CacheHelper.setData("Locale", "en");
    }
    emit(LocaleSetState());
  }
}
