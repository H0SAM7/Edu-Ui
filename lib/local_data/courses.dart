import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_images.dart';

List<CourseModel> localCourses = [
  CourseModel(
    lessons: [
      'https://www.youtube.com/watch?v=Gd97ql0gW9Q&list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm',
      "https://www.youtube.com/watch?v=Gd97ql0gW9Q&list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm",
      "https://www.youtube.com/watch?v=Gd97ql0gW9Q&list=PLeKQz1VjpjFqqXLvQ8rTnYxZcUqEGA0dm",
    ],
    code: '0',
    price: 'Free',
    creator: "T.Gamal",
    title: 'Dart Programing Language',
    subTitle: 'Dart is Amazing Language ',
    image: Assets.imagesDart,
  ),
  CourseModel(
    lessons: [
      "https://youtu.be/n1jC9BGzKfk?si=n6qXG9E0JqAW-WG9",
      "https://youtu.be/n1jC9BGzKfk?si=n6qXG9E0JqAW-WG9"
    ],
    code: '1',
    price: 'Free',
    creator: "A.Ali",
    title: "Introduction To Computer",
    subTitle:
        "fundamental concepts related to computers.",
    image: Assets.imagesProgrammingAmico,
  ),
  CourseModel(
    lessons: [
      "https://youtu.be/eXBD2bB9-RA?si=Oe3-UD_i9v22t-eL",
      "https://youtu.be/iv5m0c-8Opc?si=2Eh4Y_349vbp4LA6",
      "https://youtu.be/tf3ezjeTpfI?si=xxzbSSy_CqNRng9U"

    ],
    code: '12',
    price: 'Free',
    creator: "H.Adel",
    title: "Python Programing Language",
    subTitle: "Python is easy  to learn and fun to use",

    image: Assets.imagesPy,
  ),
  CourseModel(
    lessons: ['https://youtu.be/8jLOx1hD3_o?si=OQAU9pE_9hFiwHBK'],
    code: '12',
    price: 'Free',
    creator: "H.Adel",
    title: "C++ Programing Language",
    subTitle: "C++ is a versatile and powerful language.",
    image: Assets.imagesProgrammingAmico,
  ),
];
