import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/models/quission_model.dart';
import 'package:edu_ui/core/models/quiz_model.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/core/widgets/loading_dialog.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddQuizView extends StatefulWidget {
  const AddQuizView({super.key});
  static String id = 'AddQuizView';

  @override
  State<AddQuizView> createState() => _AddQuizViewState();
}

class _AddQuizViewState extends State<AddQuizView> {
  final TextEditingController createorController = TextEditingController();
  GlobalKey<FormState> fromKey = GlobalKey<FormState>();
  final TextEditingController quizTitleController = TextEditingController();
  final TextEditingController quizTimeController = TextEditingController();

  final TextEditingController qussionController = TextEditingController();
  final TextEditingController answerA = TextEditingController();
  final TextEditingController answerB = TextEditingController();
  final TextEditingController answerC = TextEditingController();
  final TextEditingController answerD = TextEditingController();
  final TextEditingController correctAnswer = TextEditingController();
  List<QussionModel> quissions = [];

  @override
  void dispose() {
    qussionController.dispose();
    answerA.dispose();
    answerB.dispose();
    answerC.dispose();
    answerD.dispose();
    quizTimeController.dispose();
    correctAnswer.dispose();
    quizTitleController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: mainColor,
          title: Text(
            "Add Quiz",
            style: AppStyles.styleMeduim24,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTextFrom(
                  label: ' Quiz Title',
                  hint: 'Enter your quiz Title',
                  controller: quizTitleController,
                ),
                CustomTextFrom(
                  label: ' Quiz Time',
                  hint: 'Enter your quiz Time as mintus',
                  controller: quizTimeController,
                ),
                CustomTextFrom(
                  label: ' The Quission',
                  hint: 'Enter your Quission',
                  controller: qussionController,
                ),
                CustomTextFrom(
                  label: 'Option A',
                  hint: 'Enter your Quission',
                  controller: answerA,
                ),
                CustomTextFrom(
                    label: 'Option B',
                    hint: 'Enter your Quission',
                    controller: answerB),
                CustomTextFrom(
                    label: 'Option C',
                    hint: 'Enter your Quission',
                    controller: answerC),
                CustomTextFrom(
                    label: 'Option D',
                    hint: 'Enter your Quission',
                    controller: answerD),
                CustomTextFrom(
                  label: 'Correct Option',
                  hint: 'Write A or B or C or D',
                  controller: correctAnswer,
                ),
                const SizedBox(height: 20),
                CustomButton(
                  label: 'qussion done',
                  color: mainColor,
                  txtColor: Colors.white,
                  onTap: () {
                    if (fromKey.currentState!.validate()) {
                      quissions.add(QussionModel(
                          quission: qussionController.text,
                          answers: [
                            answerA.text,
                            answerB.text,
                            answerC.text,
                            answerD.text,
                          ],
                          correctAnswer: correctAnswer.text));
                      clearMethod();
                    }
                  },
                ),
                const SizedBox(
                  height: 26,
                ),
                CustomButton(
                  label: 'Submit Quiz',
                  color: mainColor,
                  txtColor: Colors.white,
                  onTap: () async {
                    if (quissions.isNotEmpty) {
                    
                      quissions.clear();
                      Navigator.pop(context);
                    } else {
                      showCustomAlert(
                          context: context,
                          type: AlertType.warning,
                          title: 'there was wrong',
                          description: 'Not Allowed upload Empty Quiz',
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

  void clearMethod() {
    qussionController.clear();
    answerA.clear();
    answerB.clear();
    answerC.clear();
    answerD.clear();
    correctAnswer.clear();
  }
}
