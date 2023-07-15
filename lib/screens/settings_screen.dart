import 'package:dirbbird/widgets/label_switch.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const SizedBox(height: 60),
              Container(
                margin: const EdgeInsets.only(left: 20),
                child: InkWell(
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
              ),
              Container(
                margin: const EdgeInsets.only(left: 30, top: 25, bottom: 15),
                child: const Text(
                  'Settings',
                  style: TextStyle(
                    color: Color(0xFF1B1D28),
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Column(children: [
                MenuItem(name: 'Add Account', action: () {}),
                MenuItem(
                  name: 'Change Password',
                  action: () =>
                      Navigator.pushNamed(context, '/settings/change-password'),
                ),
                MenuItem(name: 'Change Language', action: () {}),
                MenuItem(name: 'Upgrade Plan', action: () {}),
                MenuItem(name: 'Multiple Account', action: () {}),
                const SizedBox(height: 40),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const LabelSwitch(
                    name: 'Enable Sync',
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: const LabelSwitch(
                    name: 'Enable 2 Step Verification',
                  ),
                ),
              ]),
            ],
          ),
        ));
  }
}

class MenuItem extends StatelessWidget {
  const MenuItem({
    super.key,
    required this.name,
    required this.action,
  });

  final String name;
  final void Function() action;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Row(children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 16,
            horizontal: 30,
          ),
          child: Text(
            name,
            style: const TextStyle(
              color: Color(0xFF1B1D28),
              fontSize: 16,
            ),
          ),
        )
      ]),
    );
  }
}
