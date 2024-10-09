import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/Notifications/services/send_notifications_view.dart';
import 'package:edu_ui/features/admin/views/add_course_view.dart';
import 'package:edu_ui/features/admin/views/add_quiz_view.dart';
import 'package:edu_ui/features/admin/views/delete_course_view.dart';
import 'package:edu_ui/features/admin/views/update_course_view.dart';
import 'package:edu_ui/features/attendence/views/attend_view.dart';
import 'package:edu_ui/features/live/view/meeting_view.dart';
import 'package:edu_ui/features/settings/views/widgets/items_setting.dart';
import 'package:edu_ui/features/settings/views/widgets/separated_item_setting.dart';
import 'package:edu_ui/features/settings/views/widgets/users_settinga.dart';
import 'package:edu_ui/temp/test.dart';
import 'package:flutter/material.dart';

class SettingsView extends StatelessWidget {
  const SettingsView({super.key});
  static String id = 'SettingsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          "Settings",
          style: AppStyles.styleMeduim24,
        ),
      ),
      body: Column(
        children: [
          seperatedItem(title: 'Teacher Settings', color: Colors.black),
          ItemSetting(
            title: 'Add Course',
            prefixIcon: Icons.add,
            onTap: () {
              Navigator.pushNamed(context, AddCourseView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Update Course',
            prefixIcon: Icons.update,
            onTap: () {
              Navigator.pushNamed(context, UpdateCourseView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Delete Course',
            prefixIcon: Icons.delete,
            onTap: () {
              Navigator.pushNamed(context, DeleteCourseView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Add Quiz',
            prefixIcon: Icons.quiz,
            onTap: () {
              Navigator.pushNamed(context, AddQuizView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Send Notification',
            prefixIcon: Icons.notification_add,
            onTap: () {
              Navigator.pushNamed(context, NotifactionsSendView.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          ItemSetting(
            title: 'Classes & Attendance',
            prefixIcon: Icons.class_,
            onTap: () {
              Navigator.pushNamed(context, AttendanceScreen.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
                ItemSetting(
            title: 'Create Meeting',
            prefixIcon: Icons.video_call,
            onTap: () {
              Navigator.pushNamed(context, Meeting.id);
            },
            suffixIcon: const SizedBox(),
          ),
          const Divider(
            thickness: .4,
          ),
          seperatedItem(title: 'User Settings', color: Colors.black),
          UsersSettings(),
        ],
      ),
    );
  }
}
