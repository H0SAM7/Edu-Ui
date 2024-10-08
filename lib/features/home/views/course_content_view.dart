import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/features/home/views/widgets/content_list_view.dart';
import 'package:edu_ui/features/home/views/widgets/course_content_header.dart';
import 'package:edu_ui/features/home/views/widgets/custom_app_header.dart';
import 'package:flutter/material.dart';

class CourseContentView extends StatelessWidget {
  const CourseContentView({
    super.key,
  });
  static String id = 'CourseContentView';

  @override
  Widget build(BuildContext context) {
    final CourseModel courseModel =
        ModalRoute.of(context)!.settings.arguments as CourseModel;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CutsomAppHeader(),
          const SizedBox(
            height: 10,
          ),
          const CourseContentHeader(),
          const SizedBox(
            height: 10,
          ),
          Expanded(
              child: ContentListView(
            courseModel: courseModel,
          )),
          // Expanded(child: ContentVideosListView()),
        ],
      ),
    );
  }
}
