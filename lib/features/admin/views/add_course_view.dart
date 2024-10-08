import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/core/widgets/loading_dialog.dart';
import 'package:edu_ui/features/admin/views/widgets/add_lesson_list_view.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class AddCourseView extends StatefulWidget {
  const AddCourseView({super.key});
  static String id = 'AddCourseView';

  @override
  State<AddCourseView> createState() => _AddCourseViewState();
}

class _AddCourseViewState extends State<AddCourseView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  final TextEditingController createorController = TextEditingController();
  final TextEditingController codeController = TextEditingController();

  GlobalKey<FormState> fromKey = GlobalKey<FormState>();

  final TextEditingController priceController = TextEditingController();
  List<TextEditingController> urlControllers = [];

  String? image, category;
  bool isUploading = false; // New state to track upload status

  bool loaded = false;
  @override
  void dispose() {
    titleController.dispose();
    subTitleController.dispose();
    createorController.dispose();
    priceController.dispose();
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

  Future<void> uploadImage() async {
    setState(() {
      isUploading = true; // Set loading indicator to true
    });

    // Assume uploadImage is a function that uploads the image
    // image = await BlocProvider.of<AdminCubit>(context)
    //     .uploadImage(titleController.text);

    setState(() {
      isUploading = false; // Set loading indicator to false
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
            s.add_course,
            style: AppStyles.styleMeduim24,
          ),
        ),
        body: SingleChildScrollView(
          child: Form(
            key: fromKey,
            child: Column(
              children: [
                CustomTextFrom(
                  label: s.title,
                  hint: s.title,
                  controller: titleController,
                ),
                CustomTextFrom(
                  label: s.code,
                  hint: s.code,
                  controller: codeController,
                ),
                CustomTextFrom(
                  label: s.subTitle,
                  hint: s.subTitle,
                  controller: subTitleController,
                ),
                CustomTextFrom(
                  label: s.price,
                  hint: s.price,
                  controller: priceController,
                ),
                CustomTextFrom(
                  label: s.creator,
                  hint: s.creator,
                  controller: createorController,
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
                TextButton.icon(
                  onPressed: () async {
                    if (image == null) {
                      await uploadImage();
                    }
                  },
                  icon: isUploading
                      ? const CircularProgressIndicator()
                      : const Icon(Icons.upload),
                  label: Text(image == null ? 'Upload Image' : 'uploaded done'),
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

                      // await BlocProvider.of<AdminCubit>(context).addCourse(
                      //     courseModel: CourseModel(
                      //   lessons: urls, // Passing the URLs list
                      //   price: priceController.text,
                      //   creator: createorController.text,
                      //   title: titleController.text,
                      //   subTitle: subTitleController.text,
                      //   image: image!,
                      //   code: codeController.text,
                      // ));
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
    titleController.clear();
    priceController.clear();
    subTitleController.clear();
    createorController.clear();
    codeController.clear();
    for (var controller in urlControllers) {
      controller.clear();
    }
    setState(() {
      urlControllers.clear(); // Clear the URL fields as well
    });
  }
}
