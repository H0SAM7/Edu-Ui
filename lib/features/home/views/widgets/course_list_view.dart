import 'package:edu_ui/features/home/views/widgets/course_item.dart';
import 'package:edu_ui/local_data/courses.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CoursesListView extends StatefulWidget {
  const CoursesListView({super.key});

  @override
  State<CoursesListView> createState() => _CoursesListViewState();
}

class _CoursesListViewState extends State<CoursesListView> {
  @override

  @override
  Widget build(BuildContext context) {
     return GridView.builder(
          physics: const BouncingScrollPhysics(),

          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            childAspectRatio: 1 / 1.5,
          ),
          // scrollDirection: Axis.horizontal,
          itemCount: localCourses.length,
          itemBuilder: (context, index) {
            // log(BlocProvider.of<GetCoursesCubit>(context)
            //     .courses
            //     .length
            //     .toString());
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CourseItemView(courseModel: localCourses[index]
                  // BlocProvider.of<GetCoursesCubit>(context).courses[index],
                  ),
            );
          },
        );
   
  }
}
