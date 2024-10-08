import 'package:edu_ui/bottom_navigator_bar.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/auth/views/register_view.dart';
import 'package:edu_ui/features/auth/views/widgets/timer_widget.dart';
import 'package:edu_ui/features/home/views/home_view.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';

class VerificationView extends StatelessWidget {
  const VerificationView({super.key});
  static String id = 'VerificationView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffececec),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          //    Expanded(child: Image.asset(Assets.imagesVerification)),
          //  SvgPicture.asset(Assets.imagesVerifiedCheck),
          Expanded(child: Image.asset(Assets.imagesVerification)),
          const SizedBox(
            height: 50,
          ),
          Expanded(
            child: Center(
              child: Text(
                textAlign: TextAlign.center,
                S.of(context).check_inbox,
                style: AppStyles.poppinsStylebold20,
              ),
            ),
          ),
          TimerWidget(
            onEnd: () {
              // Navigator.pushReplacementNamed(
              //     context,
              //     FirebaseAuth.instance.currentUser!.emailVerified
              //         ? BottomNavigator.id
              //         : RegisterView.id);
            },
          ),
          const SizedBox(height: 10,),
        ],
      ),
    );
  }
}
