import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:flutter/material.dart';


class AttendanceScreen extends StatelessWidget {
  static String id='AttendanceScreen';
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        elevation: 0,
        backgroundColor: mainColor,
        title: Text(
          "Attendance",
          style: AppStyles.styleMeduim24.copyWith(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(Assets.imagesNewLogo), // Replace with actual image asset
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'User',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('hoadel2003@email.com'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'Hi, User.',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Text(
                'Welcome to your Class',
                style: TextStyle(fontSize: 18, color: Colors.blue),
              ),
              SizedBox(height: 20),
              Text(
                "Today's Classes",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              ClassScheduleTile(subject: 'Dart Programing Language', time: '09:30 am', icon: Icons.calculate),
              ClassScheduleTile(subject: 'Introduction To Computer', time: '10:40 am', icon: Icons.science),
              ClassScheduleTile(subject: 'Python Programing Language', time: '11:45 am', icon: Icons.biotech),
              ClassScheduleTile(subject: 'C++  Programing Language', time: '12:10 am', icon: Icons.public),
              SizedBox(height: 20),
              ListTile(
                title: Text('Check Attendance Report'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text('Faculty Details'),
                trailing: Icon(Icons.arrow_forward),
              ),
              ListTile(
                title: Text('Class Details'),
                trailing: Icon(Icons.arrow_forward),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ClassScheduleTile extends StatelessWidget {
  final String subject;
  final String time;
  final IconData icon;

  ClassScheduleTile({required this.subject, required this.time, required this.icon});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(icon, color: Colors.white),
        backgroundColor: mainColor,
      ),
      title: Text(subject),
      subtitle: Text(time),
    );
  }
}
