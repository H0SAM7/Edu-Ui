import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/core/widgets/loading_dialog.dart';
import 'package:edu_ui/features/admin/views/widgets/add_lesson_list_view.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class UpdateCourseView extends StatefulWidget {
  const UpdateCourseView({super.key});
  static String id = 'UpdateCourseView';

  @override
  State<UpdateCourseView> createState() => _UpdateCourseViewState();
}

class _UpdateCourseViewState extends State<UpdateCourseView> {
  final TextEditingController codeController = TextEditingController();

  GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  List<TextEditingController> urlControllers = [];

  bool loaded = false;
  @override
  void dispose() {
    codeController.dispose();
    for (var controller in urlControllers) {
      controller.dispose();
    }
    super.dispose();
  }

  void addUrlField() {
    setState(() {
      urlControllers.add(TextEditingController());
    });
  }

  void removeUrlField() {
    setState(() {
      urlControllers.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    final s = S.of(context);

    return  Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          title: Text(
            s.update_course,
            style: AppStyles.styleMeduim24,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              children: [
                CustomTextFrom(
                  label: s.code,
                  hint: s.code,
                  controller: codeController,
                ),
                const SizedBox(height: 15),
                AddLessonListView(urlControllers: urlControllers, s: s),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomButton(
                      label: s.add_lesson,
                      color: mainColor,
                      txtColor: Colors.white,
                      onTap: addUrlField,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    CustomButton(
                      label: s.remove_lesson,
                      color: mainColor,
                      txtColor: Colors.white,
                      onTap: removeUrlField,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                CustomButton(
                  label: s.send,
                  color: mainColor,
                  txtColor: Colors.white,
                  onTap: () async {
                    if (fromKey.currentState!.validate()) {
                      List<String> urls = urlControllers
                          .map((controller) => controller.text)
                          .toList();
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
    for (var controller in urlControllers) {
      controller.clear();
    }
    setState(() {
      urlControllers.clear(); // Clear the URL fields as well
    });
  }
}
