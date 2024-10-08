import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_back_ground_image.dart';
import 'package:edu_ui/core/widgets/custom_progress_hud.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_send_button.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:edu_ui/features/auth/views/widgets/google_button.dart';
import 'package:edu_ui/bottom_navigator_bar.dart';
import 'package:edu_ui/features/auth/views/widgets/or_widget.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});
  static String id = 'LoginView';

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String? email, password;
  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return 
             Scaffold(
              body: CustomBackGroundImage(
                size: MediaQuery.of(context).size,
                child: CustomScrollView(
                  slivers: [
                    SliverToBoxAdapter(
                      child: Form(
                        key: formKey,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            // SvgPicture.asset(Assets.imagesLoginLogo),
                            // Image.asset(Assets.imagesLogin),

                             SizedBox(
                          height: 150,
                          child: Image.asset(Assets.imagesNewLogo,color: mainColor,)),
                          const SizedBox(
                            height: 10,
                          ),
                            Text(
                              S.of(context).Log_in,
                              style: AppStyles.poppinsStylebold20,
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
                            Align(
                              alignment: Alignment.centerLeft,
                              child: TextButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, LoginView.id);
                                },
                                child: Text(
                                  s.forget_password,
                                  style: AppStyles.style12.copyWith(color: newColoR2),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 50,
                            ),
                            CustomAuthButton(
                              label: s.Log_in,
                              onTap: () async {
                                if (formKey.currentState!.validate()) {
                                    Navigator.pushReplacementNamed(
                            context, BottomNavigator.id);
                                  // await BlocProvider.of<AuthCubit>(context)
                                  //     .login(
                                  //         email: email!, password: password!);
                                  //         await FirebaseMessaging.instance.subscribeToTopic('weather');

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
              ),
            );
         
  }
}
