import 'package:flutter/material.dart';

class BubbleChat extends StatelessWidget {
const BubbleChat({super.key,});
static String id='BubbleChat';
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 104, 132, 181),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(16),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16))),
                padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 16),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: Text('message',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}


class BubbleChatFriend extends StatelessWidget {
const BubbleChatFriend({super.key,});
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: BoxDecoration(
          
            color:Color.fromARGB(255, 139, 176, 195),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(16),
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16))),
                padding: const EdgeInsets.only(left: 16,right: 16,top: 16,bottom: 16),
                margin: EdgeInsets.symmetric(horizontal: 16,vertical: 10),
                child: Text('message',style: TextStyle(color: Colors.white),),
      ),
    );
  }
}