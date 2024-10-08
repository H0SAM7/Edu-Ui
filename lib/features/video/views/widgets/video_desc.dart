import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/home/views/widgets/course_title.dart';
import 'package:edu_ui/features/home/views/widgets/sub_title_course.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  const VideoDescription({super.key, required this.courseModel});
final CourseModel courseModel;

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CourseTitle(title: courseModel.title,),
        CourseSubtitle(subTitle: courseModel.subTitle,),
        SizedBox(height: 15,),
        
       
      ],
    );
  }
}