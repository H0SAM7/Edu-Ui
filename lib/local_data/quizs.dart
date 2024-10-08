import 'package:edu_ui/core/models/quission_model.dart';
import 'package:edu_ui/core/models/quiz_model.dart';

List<QuizModel> localQuizs = [
  QuizModel(quizTime: 20, quizTitle: 'Quiz Math', quiz: quissions),
  QuizModel(quizTime: 20, quizTitle: 'Quiz English', quiz: quissions),
  QuizModel(quizTime: 20, quizTitle: 'Quiz Arabic', quiz: quissions),

];

List<QussionModel> quissions = [
  QussionModel(
    quission: 'What is the capital of France?',
    answers: [
      'Berlin',
      'Paris',
      'Madrid',
      'Rome',
    ],
    correctAnswer: 'b',
  ),
  QussionModel(
    quission: 'Which planet is known as the Red Planet?',
    answers: [
      'Earth',
      'Venus',
      'Mars',
      'Jupiter',
    ],
    correctAnswer: 'c',
  ),
  QussionModel(
    quission: 'What is the largest mammal in the world?',
    answers: [
      'Elephant',
      'Blue Whale',
      'Shark',
      'Giraffe',
    ],
    correctAnswer: 'b',
  ),
  QussionModel(
    quission: 'Who wrote "Romeo and Juliet"?',
    answers: [
      'Mark Twain',
      'William Shakespeare',
      'Charles Dickens',
      'Homer',
    ],
    correctAnswer: 'a',
  ),
  QussionModel(
    quission: 'Which gas do plants absorb from the atmosphere?',
    answers: [
      'Oxygen',
      'Nitrogen',
      'Carbon Dioxide',
      'Helium',
    ],
    correctAnswer: 'a',
  ),
];
