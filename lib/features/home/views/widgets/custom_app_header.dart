
import 'package:edu_ui/constants.dart';
import 'package:edu_ui/features/home/views/widgets/custom_pop_button.dart';
import 'package:flutter/material.dart';

class CutsomAppHeader extends StatelessWidget {
  const CutsomAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: double.infinity,
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: mixColors),
      ),
      child: CustomPopButton(),
    );
  }
}
