import 'package:edu_ui/core/routes/app_routes.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:edu_ui/system_cubits/lang_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {

  runApp(const ELearing());
}

class ELearing extends StatelessWidget {
  const ELearing({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
   
        BlocProvider(
          create: (context) => LanguageCubit(),
        ),
     
      ],
      child: BlocBuilder<LanguageCubit, Locale>(
        builder: (context, state) {
          return MaterialApp(
            theme: ThemeData(
          
                // fontFamily: isArabic(context)
                //     ? GoogleFonts.inter().fontFamily
                //     : GoogleFonts.poppins().fontFamily,
                ),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: const [
              Locale('en', ''),
              Locale('ar', ''),
            ],
            locale: context.watch<LanguageCubit>().state,
            routes:AppRoutes.routes,
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoutes.initialRoute,
          );
        },
      ),
    );
  }
}

bool isArabic(BuildContext context) {

  return Localizations.localeOf(context).languageCode == 'ar';

}
