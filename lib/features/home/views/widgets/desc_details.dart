
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/core/utils/app_styles.dart';
import 'package:edu_ui/features/Notifications/views/notifi_view.dart';
import 'package:edu_ui/features/home/views/widgets/custom_notifi_button.dart';
import 'package:edu_ui/features/home/views/widgets/search.dart';
import 'package:flutter/material.dart';

class DetailsSection extends StatelessWidget {
  const DetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
      colors: mixColors
        ),

      ),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          ListTile(
            title: Text(
              'Hello ,',
              style: AppStyles.styleMeduim24.copyWith(color: Colors.white),
            ),
            subtitle: Text('How Are You Today ?',
                style: AppStyles.styleMeduim24.copyWith(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w300)),
            trailing: CustomNotificationButton(
              onPressed: () {
                Navigator.pushNamed(context, NotifiView.id);
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const SearchTextField(),
        ],
      ),
    );
  }
}
