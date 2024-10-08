
import 'package:edu_ui/features/home/views/widgets/video_item_content.dart';
import 'package:flutter/material.dart';

class ContentVideosListView extends StatelessWidget {
  const ContentVideosListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) {
      return const VideoItemContent();
    });
  }
}
