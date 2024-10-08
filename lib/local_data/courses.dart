import 'package:edu_ui/core/models/course_model.dart';
import 'package:edu_ui/core/utils/app_images.dart';

List<CourseModel> localCourses = [
  CourseModel(
    lessons: [
      'https://youtu.be/IeaadwctbD4?si=LHg250P0Mn-GCJMY',
      "https://youtu.be/S2lFmQcXsM4?si=YI7r90hO0Jlf8J__",
      "https://youtu.be/Hbcn940MG6A?si=I9ZM2Suvu44mIyNA",
    ],
    code: '0',
    price: 'Free',
    creator: "T.Gamal",
    title: 'course for kids ',
    subTitle: 'English Course Level 0',
    image: Assets.imagesEn,
  ),
  CourseModel(
    lessons: [
      "https://youtu.be/n1jC9BGzKfk?si=n6qXG9E0JqAW-WG9",
      "https://youtu.be/n1jC9BGzKfk?si=n6qXG9E0JqAW-WG9"
    ],
    code: '1',
    price: 'Free',
    creator: "A.Ali",
    title: "Science for Level 2",
    subTitle:
        "interactive journey into the world aims to make learning math fun and engaging",
    image: Assets.imagesSci,
  ),
  CourseModel(
    lessons: [
      "https://youtu.be/_zvGmj5_nQI?si=rukkCFBO2qaK4KD4",
      "https://youtu.be/_zvGmj5_nQI?si=rukkCFBO2qaK4KD4"
    ],
    code: '12',
    price: 'Free',
    creator: "H.Adel",
    title: "Math",
    subTitle:
        "Welcome to Math Adventures for Kids, ",
    image: Assets.imagesMath,
  ),
];
