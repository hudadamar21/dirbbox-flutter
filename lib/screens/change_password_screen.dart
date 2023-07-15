import 'package:dirbbird/widgets/label_text_field.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

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
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Change Password',
                    style: TextStyle(
                      color: Color(0xFF1B1D28),
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 42,
                  ),
                  const LabelTextField(label: 'Current Password'),
                  const SizedBox(height: 32),
                  const LabelTextField(label: 'New Password'),
                  const SizedBox(height: 32),
                  const LabelTextField(label: 'Confirm New Password'),
                  const SizedBox(height: 32),
                  ElevatedButton(
                    onPressed: () {},
                    child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 8,
                        ),
                        child: const Text(
                          'Change password',
                          style: TextStyle(fontSize: 16),
                        )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
