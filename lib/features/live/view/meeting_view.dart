import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class Meeting extends StatelessWidget {
  static String id = 'Meeting';
  const Meeting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              Assets.imagesTeacher, // Replace with your main video asset
              fit: BoxFit.cover,
            ),
          ),
          // Positioned(
          //   top: 30,
          //   left: 10,
          //   child: Text(
          //     '9:41',
          //     style: TextStyle(color: Colors.white),
          //   ),
          // ),
          // Positioned(
          //   top: 30,
          //   right: 10,
          //   child: Row(
          //     children: [
          //       Icon(Icons.signal_cellular_alt, color: Colors.white),
          //       SizedBox(width: 5),
          //       Icon(Icons.battery_full, color: Colors.white),
          //     ],
          //   ),
          // ),
          Positioned(
            top: 60,
            right: 10,
            child: Container(
              width: 100,
              height: 150,
              child: Image.asset(
               Assets.imagesStudent, // Replace with your inset video asset
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 220,
            right: 10,
            child: Text(
              '00:06:36',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            top: 245,
            right: 10,
            child: Text(
              'Hosam Adel',
              style: TextStyle(color: Colors.white),
            ),
          ),
          Positioned(
            bottom: 30,
            left: 30,
            child: Container(
               decoration:BoxDecoration(
                color: mainColor,
                borderRadius:BorderRadius.circular(16)
            ) ,
              child: IconButton(
                icon: Icon(Icons.mic, color: Colors.white, size: 30),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            left: MediaQuery.of(context).size.width / 2 - 30,
            child: Container(
            decoration:BoxDecoration(
                color: mainColor,
                borderRadius:BorderRadius.circular(16)
            ) ,
              child: IconButton(
                         
                icon: Icon(Icons.call_end, color: Colors.red, size: 30),
                onPressed: () {},
              ),
            ),
          ),
          Positioned(
            bottom: 30,
            right: 30,
            child: Container(
               decoration:BoxDecoration(
                color: mainColor,
                borderRadius:BorderRadius.circular(16)
            ) ,
              child: IconButton(
                icon: Icon(Icons.videocam, color: Colors.white, size: 30),
                onPressed: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
