import 'package:dirbbird/widgets/cards/folder_card.dart';
import 'package:flutter/material.dart';

class FolderList extends StatelessWidget {
  final List folderList;

  const FolderList({super.key, required this.folderList});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: folderList.length, // Number of items in the grid
      padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // Number of columns in the grid
        crossAxisSpacing: 22, // Spacing between columns
        mainAxisSpacing: 22, // Spacing between rows
        childAspectRatio: 148 / 107,
      ),
      itemBuilder: (context, index) {
        // Widget for each item in the grid
        return FolderCard(folder: folderList[index]);
      },
    );
  }
}
