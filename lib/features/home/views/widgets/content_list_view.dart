import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/features/home/views/widgets/section_content.dart';
import 'package:flutter/material.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key, required this.courseModel});
  final CourseModel courseModel;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: courseModel.lessons.length,
        itemBuilder: (context, index) {
          return SectionContent(
            lessonIndex: (index+1),
            courseModel: courseModel,
            
          );
        });
  }
}
