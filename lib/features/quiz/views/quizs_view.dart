import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/quiz/views/widgets/quizCardListView.dart';
import 'package:edu_ui/local_data/quizs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Quizes extends StatelessWidget {
  const Quizes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          "My Quizes",
          style: AppStyles.styleMeduim24,
        ),
      ),
      body:Column(
              children: [
                Expanded(
                  child: QuizCardLListView(
                    quizModels: localQuizs,
                  ),
                ),
              ],
            ),
      //     BlocBuilder<GetQuizsCubit, GetQuizsState>(builder: (context, state) {
      //   if (state is GetQuizsSuccess) {
      //     if (state.quizs.isNotEmpty) {
      //       return Column(
      //         children: [
      //           Expanded(
      //             child: QuizCardLListView(
      //               quizModels: state.quizs,
      //             ),
      //           ),
      //         ],
      //       );
      //     } else {
      //       Center(
      //           child: Text(
      //         'No Quiz Available Now',
      //         style: TextStyle(fontSize: 25, color: newColoR3),
      //       ));
      //     }
      //   }
      //   //Expanded(child: QuizListView()),
      //   return Center(
      //       child: Text(
      //     'No Quiz Available Now',
      //     style: TextStyle(fontSize: 25,color: newColoR3),
      //   ));
      // }
      // ),
    );
  }
}
