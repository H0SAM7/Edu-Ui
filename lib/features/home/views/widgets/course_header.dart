
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class MyCourseaHeader extends StatelessWidget {
  const MyCourseaHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'My Courses',
        // textAlign: TextAlign.start,
        style: AppStyles.poppinsStylebold20.copyWith(),
      ),
    );
  }
}
