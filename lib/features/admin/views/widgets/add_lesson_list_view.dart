
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:edu_ui/generated/l10n.dart';
import 'package:flutter/material.dart';

class AddLessonListView extends StatelessWidget {
  const AddLessonListView({
    super.key,
    required this.urlControllers,
    required this.s,
  });

  final List<TextEditingController> urlControllers;
  final S s;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: urlControllers.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: CustomTextFrom(
            label: s.add_lesson,
            hint: s.add_lesson,
            controller: urlControllers[index],
          ),
        );
      },
    );
  }
}
