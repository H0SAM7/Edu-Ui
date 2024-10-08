
import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/features/home/views/course_content_view.dart';
import 'package:edu_ui/features/home/views/widgets/course_image.dart';
import 'package:edu_ui/features/home/views/widgets/course_price.dart';
import 'package:edu_ui/features/home/views/widgets/course_title.dart';
import 'package:edu_ui/features/home/views/widgets/sub_title_course.dart';
import 'package:flutter/material.dart';

class CourseItemView extends StatelessWidget {
  const CourseItemView({super.key, required this.courseModel});
    final CourseModel courseModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, CourseContentView.id,arguments: courseModel);

      },
      child:  Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            
            child: CourseImage(image:courseModel.image ,)),
          const SizedBox(
            height: 8,
          ),
           CourseTitle(title: courseModel.title,),
          const SizedBox(
            height: 8,
          ),
          CourseSubtitle(subTitle: courseModel.subTitle,),
          const SizedBox(
            height: 8,
          ),
          CoursePrice(price: courseModel.price,),
        ],
      ),
    );
  }
}
