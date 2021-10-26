import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:sonnaa/core/providers/locale_provider/locale_provider.dart';
import 'package:sonnaa/core/services/network/cache_helper.dart';
import 'package:sonnaa/helper/bloc_observer.dart';
import 'package:sonnaa/l10n/l10n.dart';
import 'package:sonnaa/view/screens/home_screen.dart';
import 'package:sonnaa/view/themes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await CacheHelper.init();
  final String? locale = await CacheHelper.getData("locale");

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => LocaleProvider()..setLocale(locale),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393.0, 760.0),
      builder: () => MaterialApp(
        title: 'Sonna3 El_Kheir',
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        supportedLocales: L10n.all,
        locale: BlocProvider.of<LocaleProvider>(context).locale,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        home: const HomeScreen(),
      ),
    );
  }
}
