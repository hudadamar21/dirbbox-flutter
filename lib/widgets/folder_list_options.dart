import 'package:dirbbird/consts/PADDING_X.dart';
import 'package:flutter/material.dart';

class FolderListOptions extends StatelessWidget {
  const FolderListOptions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PADDING_X,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(5),
            onTap: () {},
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Row(
                children: [
                  Text(
                    'Recent',
                    style: TextStyle(
                        color: Color(0xFF22215B),
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(width: 5),
                  Icon(Icons.keyboard_arrow_down)
                ],
              ),
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/icons/sort-icon.png')),
              ),
              const SizedBox(width: 10),
              InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: () {},
                child: Padding(
                    padding: const EdgeInsets.all(8),
                    child: Image.asset('assets/icons/grid-view-icon.png')),
              )
            ],
          )
        ],
      ),
    );
  }
}
