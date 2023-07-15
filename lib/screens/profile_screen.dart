import 'package:dirbbird/consts/PADDING_X.dart';
import 'package:dirbbird/data/data_folder_list.dart';
import 'package:dirbbird/widgets/cards/folder_card.dart';
import 'package:dirbbird/widgets/cards/profile_card.dart';
import 'package:dirbbird/widgets/drawer/app_drawer.dart';
import 'package:flutter/material.dart';

import 'package:dirbbird/widgets/folder_list.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  void _openDrawer() {
    _scaffoldKey.currentState?.openDrawer();
  }

  void _closeDrawer() {
    _scaffoldKey.currentState?.closeDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      drawer: AppDrawer(onClose: _closeDrawer),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Padding(
              padding: PADDING_X,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => Navigator.pushNamed(context, '/home'),
                    borderRadius: BorderRadius.circular(5),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.arrow_back_ios_rounded,
                        size: 20,
                      ),
                    ),
                  ),
                  const Text(
                    'My Profile',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(5),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.more_horiz,
                        size: 20,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 32),
                    const ProfileCard(
                      profileImage: 'assets/images/profile-image.png',
                      name: 'Neelesh Chaudhary',
                      position: 'UI / UX Designer',
                      description:
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.',
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: PADDING_X,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            borderRadius: BorderRadius.circular(5),
                            onTap: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Text(
                                'My Folder',
                                style: TextStyle(
                                    color: Color(0xFF22215B),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {},
                                child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.add, size: 24)),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {},
                                child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.settings, size: 20)),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {},
                                child: const Padding(
                                    padding: EdgeInsets.all(8),
                                    child: Icon(Icons.arrow_forward_ios_rounded,
                                        size: 20)),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      height: 275,
                      child: GridView.builder(
                        itemCount:
                            folders.length, // Number of items in the grid
                        padding: const EdgeInsets.fromLTRB(30, 0, 30, 30),
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2, // Number of columns in the grid
                          crossAxisSpacing: 22, // Spacing between columns
                          mainAxisSpacing: 22, // Spacing between rows
                          childAspectRatio: 148 / 107,
                        ),
                        itemBuilder: (context, index) {
                          // Widget for each item in the grid
                          return FolderCard(folder: folders[index]);
                        },
                      ),
                    ),
                    Padding(
                      padding: PADDING_X,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Recent Uploads',
                                style: TextStyle(
                                    color: Color(0xFF22215B),
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              InkWell(
                                borderRadius: BorderRadius.circular(5),
                                onTap: () {},
                                child: const Padding(
                                  padding: EdgeInsets.all(8),
                                  child: Icon(Icons.sort, size: 20),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/word-icon.png'),
                              const SizedBox(width: 10),
                              const Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Projects.docx',
                                      style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.w500,
                                        color: Color(0xFF22215B),
                                      ),
                                    ),
                                    Text(
                                      'November 22.2023',
                                      style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(155, 34, 33, 91),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              const Text(
                                '300kb',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontWeight: FontWeight.w400,
                                  color: Color.fromARGB(155, 34, 33, 91),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
