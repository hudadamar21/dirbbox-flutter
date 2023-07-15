import 'package:dirbbird/widgets/app_header.dart';
import 'package:dirbbird/widgets/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

import 'package:dirbbird/widgets/folder_list.dart';
import 'package:dirbbird/widgets/folder_list_options.dart';
import 'package:dirbbird/data/data_folder_list.dart';
import 'package:dirbbird/widgets/search_field.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _closeDrawer() {
    _scaffoldKey.currentState?.closeDrawer();
  }

  static const folderList = [...folders, ...folders, ...folders];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30, right: 16),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: const Color(0xFF22215B),
          child: const Icon(Icons.add),
        ),
      ),
      drawer: AppDrawer(onClose: _closeDrawer),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            AppHeader(openDrawer: _openDrawer),
            const SizedBox(height: 20),
            const SearchField(),
            const SizedBox(height: 12),
            const FolderListOptions(),
            const SizedBox(height: 12),
            const Expanded(
              flex: 1,
              child: FolderList(folderList: folderList),
            )
          ],
        ),
      ),
    );
  }
}
