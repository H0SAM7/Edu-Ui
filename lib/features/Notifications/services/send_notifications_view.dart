import 'dart:developer';
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/widgets/custom_alert.dart';
import 'package:edu_ui/core/widgets/custom_button.dart';
import 'package:edu_ui/features/Notifications/services/send_notifications.dart';
import 'package:edu_ui/features/auth/views/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:http/http.dart' as http;
import 'package:rflutter_alert/rflutter_alert.dart';

class NotifactionsSendView extends StatefulWidget {
  const NotifactionsSendView({super.key});
  static String id = 'NotifactionsSendView';
  @override
  _NotifactionsSendViewState createState() => _NotifactionsSendViewState();
}

class _NotifactionsSendViewState extends State<NotifactionsSendView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitlecontroller = TextEditingController();

  String accessToken = '';

  // getToken() async {
  //   var mytoken = await FirebaseMessaging.instance.getToken();
  //   log(mytoken.toString());
  // }

  @override
  // void initState() {
  //   getToken();
  //   super.initState();
  //   getAccessToken();
  // }

  // Future<void> getAccessToken() async {
  //   try {
  //     final serviceAccountJson = await rootBundle.loadString(
  //         'assets/files/educationapp-842af-firebase-adminsdk-9uxdl-b965004fc3.json');

  //     final accountCredentials = ServiceAccountCredentials.fromJson(
  //       json.decode(serviceAccountJson),
  //     );

  //     const scopes = ['https://www.googleapis.com/auth/firebase.messaging'];

  //     final client = http.Client();
  //     try {
  //       final accessCredentials =
  //           await obtainAccessCredentialsViaServiceAccount(
  //         accountCredentials,
  //         scopes,
  //         client,
  //       );

  //       setState(() {
  //         accessToken = accessCredentials.accessToken.data;
  //       });

  //       log('Access Token: $accessToken');
  //     } catch (e) {
  //       log('Error obtaining access token: $e');
  //     } finally {
  //       client.close();
  //     }
  //   } catch (e) {
  //     log('Error loading service account JSON: $e');
  //   }
  // }

  @override
  void dispose() {
    titleController.dispose();
    subTitlecontroller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Send Notification'),
        elevation: 0,
        backgroundColor: mainColor,
      ),
      body: Column(
        children: [
          CustomTextFrom(
            hint: '',
            label: "title",
            onChanged: (value) {
              titleController.text = value;
            },
          ),
          CustomTextFrom(
            hint: '',
            label: "subtitle",
            onChanged: (value) {
              subTitlecontroller.text = value;
            },
          ),
          CustomButton(
            label: 'Send',
            color: mainColor,
            txtColor: Colors.white,
            onTap: () async {
              try {
                // await NotificationsServices().sendNotification(
                //   titleController.text,
                //   subTitlecontroller.text,
                //   accessToken,
                // );
                showCustomAlert(
                    context: context,
                    type: AlertType.success,
                    title: '',
                    description: 'Send done',
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    actionTitle: 'Ok');

                log('send message done');
                Navigator.pop(context);
              } catch (e) {
                log('send message err:$e');
              }
            },
          ),
          // IconButton(
          //     onPressed: () async {
          //       await NotificationsServices().sendNotification(
          //           'welcome', 'can i help you?', accessToken);
          //       log('send message done');
          //     },
          //     icon: Icon(
          //       Icons.import_contacts,
          //       size: 150,
          //     )),
        ],
      ),
    );
  }
}
