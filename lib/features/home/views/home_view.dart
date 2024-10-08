import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/Notifications/views/notifi_view.dart';
import 'package:edu_ui/features/home/views/widgets/course_header.dart';
import 'package:edu_ui/features/home/views/widgets/course_list_view.dart';
import 'package:edu_ui/features/home/views/widgets/custom_drawer.dart';
import 'package:edu_ui/features/home/views/widgets/custom_notifi_button.dart';
import 'package:edu_ui/features/home/views/widgets/desc_details.dart';
import 'package:edu_ui/features/home/views/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static String id = 'HomeView';
  @override
  Widget build(BuildContext context) {
    return 
    Scaffold(
        backgroundColor: Colors.white,
        drawer: const CustomDrawer(),

        body: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                height: 220, width: double.infinity, child: DetailsSection()),
            SizedBox(
              height: 20,
            ),
            MyCourseaHeader(),
      
            Expanded(child: CoursesListView()),
            // Expanded(child: CoursesListView()),
          ],
        ),
      );
   
  }
}
