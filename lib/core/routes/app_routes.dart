import 'package:edu_ui/features/Notifications/services/send_notifications_view.dart';
import 'package:edu_ui/features/Notifications/views/notifi_view.dart';
import 'package:edu_ui/features/admin/views/delete_course_view.dart';
import 'package:edu_ui/features/admin/views/update_course_view.dart';
import 'package:edu_ui/features/home/views/course_content_view.dart';
import 'package:edu_ui/features/quiz/views/attemp_quiz_view.dart';
import 'package:edu_ui/features/quiz/views/quiz_result_view.dart';
import 'package:flutter/widgets.dart';
import 'package:edu_ui/features/admin/views/add_course_view.dart';
import 'package:edu_ui/features/admin/views/add_quiz_view.dart';
import 'package:edu_ui/features/auth/views/login_view.dart';
import 'package:edu_ui/features/auth/views/register_view.dart';
import 'package:edu_ui/features/auth/views/verification_view.dart';
import 'package:edu_ui/features/home/views/home_view.dart';
import 'package:edu_ui/bottom_navigator_bar.dart';
import 'package:edu_ui/features/splash/views/start_view.dart';
import 'package:edu_ui/features/video/views/pod_player.dart';
import 'package:edu_ui/features/video/views/video_view.dart';
import 'package:flutter/material.dart';

abstract class AppRoutes {
  static String? initialRoute = StartView.id;
  static Map<String, Widget Function(BuildContext)> routes = {
    HomeView.id: (context) => const HomeView(),
    CourseContentView.id: (context) => const CourseContentView(),
    VideoView.id: (context) => const VideoView(),
    //  YoutubeVideoPlayer.id: (context) => const YoutubeVideoPlayer(),
    //  VideoViewSection.id:(context)=>VideoViewSection(),
    RegisterView.id: (context) => const RegisterView(),
    LoginView.id: (context) => const LoginView(),
    StartView.id: (context) => const StartView(),
    VerificationView.id: (context) => const VerificationView(),
    AddCourseView.id: (context) => const AddCourseView(),
    PlayVideoFromYoutube.id: (context) => const PlayVideoFromYoutube(),
    BottomNavigator.id: (context) => const BottomNavigator(),
    AddQuizView.id: (context) => const AddQuizView(),
    NotifiView.id: (context) => const NotifiView(),
    AttempQuizView.id: (context) => const AttempQuizView(),
    QuizResultView.id: (context) => const QuizResultView(),
    NotifactionsSendView.id: (context) => const NotifactionsSendView(),
    UpdateCourseView.id: (context) => const UpdateCourseView(),
    UpdateCourseView.id: (context) => const UpdateCourseView(),
    DeleteCourseView.id: (context) => const DeleteCourseView(),
  };
}
