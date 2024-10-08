
import 'package:edu_ui/core/utils/app_images.dart';
import 'package:flutter/material.dart';

class CustomPopButton extends StatelessWidget {
  const CustomPopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: Image.asset(
            Assets.imagesLogo2,
            height: 80,
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: IconButton(
            padding: EdgeInsets.only(top: 40),
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    );
  }
}
