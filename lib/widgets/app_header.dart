import 'package:dirbbird/consts/PADDING_X.dart';
import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key, required this.openDrawer});

  final void Function() openDrawer;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PADDING_X,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Your Dribbox',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
          ),
          InkWell(
            onTap: openDrawer,
            borderRadius: BorderRadius.circular(5),
            child: Padding(
              padding: const EdgeInsets.all(5),
              child: Image.asset('assets/icons/menu-icon.png'),
            ),
          )
        ],
      ),
    );
  }
}
