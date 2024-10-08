
class CourseModel {
  final String code;

  final String title;
  final String subTitle;
  final String price;
  final String creator;
  final String image;

  final List<String> lessons;

  // Constructor with all fields as required positional arguments
  CourseModel({
    required this.lessons,
    required this.code,
    required this.price,
    required this.creator,
    required this.title,
    required this.subTitle,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return {
      'code': code,
      'title': title,
      'image': image,
      'subTitle': subTitle,
      'price': price,
      'creator': creator,
      'lessons': lessons,
    };
  }

  // factory CourseModel.fromDocuments(DocumentSnapshot docs) {
  //   Map<String, dynamic> data = docs.data() as Map<String, dynamic>;
  //   return CourseModel(
  //     lessons: List<String>.from(
  //         data['lessons']), // Extract lessons as a List<String>
  //     price: data['price'],
  //     code: data['code'],
  //     creator: data['creator'],
  //     title: data['title'],
  //     subTitle: data['subTitle'],
  //     image: data['image'],
  //   );
  // }
}
