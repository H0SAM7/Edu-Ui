import 'dart:developer';
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/core/widgets/custom_back_ground_image.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/features/auth/views/register_view.dart';
import 'package:edu_ui/features/auth/views/verification_view.dart';
import 'package:edu_ui/bottom_navigator_bar.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';

class StartView extends StatelessWidget {
  const StartView({super.key});
  static String id = 'StartView';

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final s = S.of(context);
    return Scaffold(
      body: CustomBackGroundImage(
        size: size,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //  Expanded(child: SvgPicture.asset(Assets.imagesStart)),
            // Expanded(child: SvgPicture.asset(Assets.imagesLetsGo)),
            SizedBox(
              height: size.height * .1,
            ),
            Expanded(
              child: Image.asset(Assets.imagesStart),
            ),
            Expanded(
                child: Text(
              s.learn_any_time,
              style: AppStyles.styleMeduim24,
            )),
            CustomButton(
              label: s.start,
              color: mainColor,
              txtColor: Colors.white,
              onTap: () {
                 Navigator.pushNamed(context, RegisterView.id);
                // FirebaseAuth.instance.authStateChanges().listen((User? user) {
                //   if (user == null) {
                //     Navigator.pushNamed(context, RegisterView.id);
                //     log('User is currently signed out!');
                //   } else {
                //     if (user.emailVerified) {
                //       Navigator.pushReplacementNamed(context, BottomNavigator.id);
                //       log('User is signed in!');
                //     } else if (!user.emailVerified) {
                      // Navigator.pushReplacementNamed(
                      //     context, VerificationView.id);
                //     } else {
                //       Navigator.pushReplacementNamed(context, RegisterView.id);
                //     }
                //   }
                // });
              },
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
