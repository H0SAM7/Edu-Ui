import 'dart:developer';

import 'package:edu_ui/constants.dart';
import 'package:edu_ui/features/auth/views/login_view.dart';
import 'package:edu_ui/features/settings/views/widgets/items_setting.dart';
import 'package:edu_ui/main.dart';
import 'package:edu_ui/system_cubits/lang_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UsersSettings extends StatefulWidget {
  const UsersSettings({
    super.key,
  });

  @override
  State<UsersSettings> createState() => _UsersSettingsState();
}

class _UsersSettingsState extends State<UsersSettings> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;

    return Column(
      children: [
        //  ItemSetting(
        //   title: 'Change Password',
        //   prefixIcon: Icons.password,
        //   onTap: ()  {

        //   },
        //   suffixIcon: const SizedBox(),
        // ),
        // CustomDriver(),
        ItemSetting(
          title: 'Log Out',
          prefixIcon: Icons.logout,
          onTap: () async {
           // await FirebaseAuth.instance.signOut();
            Navigator.pushNamedAndRemoveUntil(
              context,
              LoginView.id,
              (Route<dynamic> route) => false,
            );
          },
          suffixIcon: const SizedBox(),
        ),
        CustomDriver(),
        ItemSetting(
          title: 'Language',
          prefixIcon: Icons.language,
          onTap: () {
            log(isArabic(context).toString());
            context.read<LanguageCubit>().setLocale(
                  isArabic(context)
                      ? const Locale('en', '')
                      : const Locale('ar', ''),
                );
          },
          suffixIcon: Row(
            children: [
              Text(
                isArabic(context)
                    ? 'English'
                    : 'العربية', // Change text based on current locale
                style: TextStyle(
                    color: isDarkMode
                        ? Colors.white.withOpacity(0.5)
                        : Colors.black.withOpacity(0.5)),
              ),
              const SizedBox(width: 5),
              Icon(
                Icons.arrow_forward_ios,
                size: 19,
                color: isDarkMode
                    ? Colors.white.withOpacity(0.5)
                    : Colors.black.withOpacity(0.5),
              ),
            ],
          ),
        ),
        CustomDriver(),
      ],
    );
  }
}

class CustomDriver extends StatelessWidget {
  const CustomDriver({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: .4,
      color: mainColor,
    );
  }
}
