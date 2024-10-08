import 'package:edu_ui/core/models/quiz_model.dart';
import 'package:edu_ui/features/quiz/views/widgets/quiz_view_item.dart';
import 'package:flutter/material.dart';

class QuizListView extends StatelessWidget {
  const QuizListView({
    super.key,
    required this.quizModel, required this.onDegreeChanged,
  });
  final QuizModel quizModel;
    final ValueChanged<int> onDegreeChanged; // Add this line

  @override
  Widget build(BuildContext context) {
    
    return ListView.builder(
        itemCount: quizModel.quiz.length,
        itemBuilder: (context, ind) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: QuizViewItem(
              qussionModel: quizModel.quiz[ind],
              index: (ind+1).toString(),
              onDegreeChanged: onDegreeChanged, 
            ),
          );
        });
  }
}
