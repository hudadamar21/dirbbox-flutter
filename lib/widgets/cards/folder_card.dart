import 'package:dirbbird/data/data_folder_list.dart';
import 'package:flutter/material.dart';

class FolderCard extends StatelessWidget {
  const FolderCard({super.key, required this.folder});

  final Folder folder;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: folder.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(folder.imagePath),
                InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(20),
                  child: Icon(
                    Icons.more_vert,
                    size: 25,
                    color: folder.fgColor,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  folder.name,
                  style: TextStyle(
                      color: folder.fgColor,
                      fontSize: 16,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(height: 3),
                Text(
                  folder.date,
                  style: TextStyle(fontSize: 10, color: folder.fgColor),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
