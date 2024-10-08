import 'package:edu_ui/bottom_navigator_bar.dart';
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/models/user_model.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_back_ground_image.dart';
import 'package:edu_ui/core/widgets/custom_progress_hud.dart';

import 'package:edu_ui/features/auth/views/login_view.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_send_button.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:edu_ui/features/auth/views/widgets/google_button.dart';
import 'package:edu_ui/features/auth/views/widgets/or_widget.dart';
import 'package:edu_ui/features/home/views/home_view.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});
  static String id = 'RegisterView';

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String? email, password, phone, fatherPhone, name;

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  SizedBox(
                      height: 150,
                      child: Image.asset(
                        Assets.imagesNewLogo,
                        color: mainColor,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Register Now!',
                    style: AppStyles.poppinsStylebold20,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Enter Your Information below',
                    style: AppStyles.style12,
                  ),
                  CustomTextFrom(
                    hint: s.enter_name,
                    label: s.name,
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  CustomTextFrom(
                    hint: s.enter_email,
                    label: s.email,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  CustomTextFrom(
                    hint: s.enter_password,
                    label: s.password,
                    isPasswordField: true,
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  CustomTextFrom(
                    hint: s.enter_phone,
                    label: s.phone,
                    onChanged: (value) {
                      phone = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return s.complete_fields;
                      }
                      // else if (value.length != 11 &&
                      //     value != fatherPhone) {
                      //   return s.correct_number;
                      // }
                      return null;
                    },
                  ),
                  CustomTextFrom(
                    hint: s.enter_father_phone,
                    label: s.father_phone,
                    onChanged: (value) {
                      fatherPhone = value;
                    },
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return s.complete_fields;
                      } else if (value.length != 11 && value != phone) {
                        return s.correct_number;
                      }
                      return null;
                    },
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginView.id);
                      },
                      child: Text(
                        s.have_account,
                        style: AppStyles.style12.copyWith(color: newColoR2),
                      ),
                    ),
                  ),
                  CustomAuthButton(
                    label: 'Register',
                    onTap: () async {
                      if (formKey.currentState!.validate()) {
                        Navigator.pushReplacementNamed(
                            context, BottomNavigator.id);
                        // await BlocProvider.of<AuthCubit>(context)
                        //     .register(
                        //         email: email!, password: password!);
                        // await addUser(
                        //   userModel: UserModel(
                        //       userName: name!,
                        //       email: email!,
                        //       phone: phone!,
                        //       fatherPhone: fatherPhone!),
                        // );
                        // await FirebaseMessaging.instance
                        //     .subscribeToTopic('weather');
                      }
                    },
                  ),
                  OrWidget(),
                  GoogleButton(
                    onTap: () async {
                        Navigator.pushReplacementNamed(
                            context, BottomNavigator.id);
                      // await BlocProvider.of<AuthCubit>(context)
                      //     .signInWithGoogle();
                      //     await FirebaseMessaging.instance.subscribeToTopic('weather');
                    },
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
