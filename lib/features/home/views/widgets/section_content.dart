import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/video/views/video_view.dart';
import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  const SectionContent({
    super.key,
    required this.courseModel,
    required this.lessonIndex,
  });
  final CourseModel courseModel;
  final int lessonIndex;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, VideoView.id, arguments: {
          'courseModel': courseModel,
          'lessonIndex': lessonIndex,
        });
      },
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          border: Border.all(color: mainColor,width:.5 ),
          color: Colors.white.withOpacity(.9),
        ),
        child: ListTile(
          leading: CustomPlayIcon(),
          // const Icon(Icons.play_arrow,color: newColor,),
          //contentPadding: EdgeInsets.zero,
          title: Text(
            'Section $lessonIndex',
            style: AppStyles.poppinsStylebold20,
          ),

          subtitle: Text(
            '1/12 | 2h',
            style: AppStyles.poppinsStylebold20,
          ),
          //    trailing: const Icon(Icons.keyboard_arrow_down),
        ),
      ),
    );
  }
}

class CustomPlayIcon extends StatelessWidget {
  const CustomPlayIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
   width: 70,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color.fromARGB(255, 214, 232, 234), Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Icon(
        Icons.play_arrow_outlined,
        color: Colors.teal,
        size: 50,
      ),
    );
  }
}







































// import 'package:edu_ui/core/utils/app_styles.dart';
// import 'package:edu_ui/features/home/presentation/widgets/video_item_content.dart';
// import 'package:flutter/material.dart';

// class SectionContent extends StatefulWidget {
//   const SectionContent({
//     super.key, required this.lessonTitle,
//   });
// final String lessonTitle;
//   @override
//   State<SectionContent> createState() => _SectionContentState();
// }

// class _SectionContentState extends State<SectionContent> {
//   bool customTileExpanded = false;

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: MediaQuery.sizeOf(context).width,
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(.9),
//       ),
//       child: ExpansionTile(
//         //contentPadding: EdgeInsets.zero,
//         title: Text(
//         ,
//           style: AppStyles.poppinsStylebold20,
//         ),

//         subtitle: Text(
//           '1/12 | 2h',
//           style: AppStyles.poppinsStylebold20,
//         ),
//         //    trailing: const Icon(Icons.keyboard_arrow_down),
//         trailing: Icon(
//           customTileExpanded
//               ?Icons.keyboard_arrow_up
//               :  Icons.keyboard_arrow_down
//         ),
//         children: const [
//           VideoItemContent(),
   
   
//         ],
//         onExpansionChanged: (bool expanded) {
//           setState(() {
//             customTileExpanded = expanded;
//           });
//         },
//       ),
//     );
//   }
// }
