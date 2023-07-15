import 'package:dirbbird/provider/drawer_provider.dart';
import 'package:dirbbird/widgets/drawer/app_drawer_header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Menu {
  final String name;
  final void Function() action;

  Menu({required this.name, required this.action});
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key, required this.onClose});

  final void Function()? onClose;

  static List<String> menus = [
    "Home",
    "Profile",
    "Storage",
    "Shared",
    "Stats",
    "Settings",
    "Help",
  ];

  @override
  Widget build(BuildContext context) {
    var drawerProvider = context.read<DrawerProvider>();

    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          child: Column(
            children: <Widget>[
              AppDrawerHeader(onClose: onClose),
              Expanded(
                child: ListView.builder(
                  itemCount: menus.length,
                  itemBuilder: (context, index) {
                    var menu = menus[index];
                    var isCurrentScreen = drawerProvider.currentScreen == menu;
                    return InkWell(
                      onTap: () {
                        drawerProvider.changeCurrentScreen(menu);
                        Navigator.pushNamed(context, '/${menu.toLowerCase()}');
                      },
                      child: Row(children: [
                        Container(
                          width: isCurrentScreen ? 5 : 0,
                          height: 52,
                          color: const Color(0xFF567DF4),
                        ),
                        const SizedBox(width: 27),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            menu,
                            style: TextStyle(
                              color: const Color(0xFF1B1D28),
                              fontSize: 16,
                              fontWeight: isCurrentScreen
                                  ? FontWeight.w800
                                  : FontWeight.w700,
                            ),
                          ),
                        )
                      ]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 32, 32),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 16,
                          horizontal: 16,
                        ),
                        child: Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 5),
                            Text(
                              'Logout',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      child: Text(
                        'Version 2.0.1',
                        style: TextStyle(
                          color: Color(0xFF3A4276),
                          fontSize: 10,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
