import 'package:edu_ui/core/models/quiz_model.dart';
import 'package:edu_ui/features/quiz/views/widgets/quiz_card_view.dart';
import 'package:flutter/material.dart';

class QuizCardLListView extends StatelessWidget {
  const QuizCardLListView({super.key, required this.quizModels});
final  List<QuizModel> quizModels;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: quizModels.length,
      itemBuilder: (context, ind) {
        return QuizCardView(quizModel: quizModels[ind]);
      });
  }
}
