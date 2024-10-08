import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/video/views/pod_player.dart';
import 'package:edu_ui/features/video/views/widgets/video_desc.dart';
import 'package:flutter/material.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});
  static String id = 'VideoView';

  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> args =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    final CourseModel courseModel = args['courseModel'];
    final int lessonIndex = args['lessonIndex'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: mainColor,
        title: Text(
          courseModel.title,
          style: AppStyles.styleMeduim24,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .4,
              child: PlayVideoFromYoutube(
                lessonLink: courseModel.lessons[lessonIndex - 1],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: VideoDescription(
                courseModel: courseModel,
              ),
            ),
            //  const VideoComments()
          ],
        ),
      ),
    );
  }
}

class VideoComments extends StatelessWidget {
  const VideoComments({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
