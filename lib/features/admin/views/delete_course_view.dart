import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/core/widgets/loading_dialog.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DeleteCourseView extends StatefulWidget {
  const DeleteCourseView({super.key});
  static String id = 'DeleteCourseView';
  @override
  State<DeleteCourseView> createState() => _DeleteCourseViewState();
}

class _DeleteCourseViewState extends State<DeleteCourseView> {
  final TextEditingController codeController = TextEditingController();

  GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  @override
  void dispose() {
    codeController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return  Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          title: Text(
            s.delete,
            style: AppStyles.styleMeduim24,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              children: [
                const SizedBox(height: 25),
                CustomTextFrom(
                  label: s.code,
                  hint: s.code,
                  controller: codeController,
                ),
                const SizedBox(height: 25),
                CustomButton(
                  label: s.send,
                  color: mainColor,
                  txtColor: Colors.white,
                  onTap: () async {
                    if (fromKey.currentState!.validate()) {
                      clearFieldsMethod();
                     Navigator.pop(context);
                    } else {
                      showCustomAlert(
                          context: context,
                          type: AlertType.warning,
                          title: 'there was wrong',
                          description: 'Not Allowed upload Empty Course',
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          actionTitle: 'Ok');
                    }
                  },
                )
              ],
            ),
          ),
        ),
      );
    
  }

  void clearFieldsMethod() {
    codeController.clear();

    setState(() {});
  }
}
