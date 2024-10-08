import 'package:cached_network_image/cached_network_image.dart';
import 'package:edu_ui/core/widgets/custom_loading_indecator.dart';
import 'package:flutter/material.dart';

class CourseImage extends StatelessWidget {
  const CourseImage({
    super.key,
    required this.image,
  });
  final String image;
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      width: MediaQuery.sizeOf(context).width,
      fit: BoxFit.fill,
    );
    // return CachedNetworkImage(
    //   imageUrl: image,
    //   width: MediaQuery.sizeOf(context).width,
    //   fit: BoxFit.fill,
    //   progressIndicatorBuilder: (context, url, downloadProgress) =>
    //       const Center(
    //     child: CustomLoadingIndicator(),
    //   ),
    //   errorWidget: (context, url, error) => const Center(
    //     child: Icon(Icons.error),
    //   ),
    // );
  }
}
