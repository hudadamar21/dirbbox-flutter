import 'package:flutter/material.dart';

class AppDrawerHeader extends StatelessWidget {
  const AppDrawerHeader({
    super.key,
    required this.onClose,
  });

  final void Function()? onClose;

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: const EdgeInsets.all(0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 100,
            padding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 30,
            ),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(50.0),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/images/profile-image.png'),
                const SizedBox(width: 14),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neelesh',
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF1B1D28),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'Seattle, Washington',
                      style: TextStyle(
                        fontSize: 10,
                        color: Color(0xFF7B7F9E),
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(30),
            child: InkWell(
                borderRadius: BorderRadius.circular(5),
                onTap: onClose,
                child: const Padding(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.close),
                )),
          )
        ],
      ),
    );
  }
}
