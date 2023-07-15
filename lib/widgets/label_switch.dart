import 'package:flutter/material.dart';

class LabelSwitch extends StatefulWidget {
  const LabelSwitch({super.key, required this.name});
  final String name;
  @override
  LabelSwitchState createState() => LabelSwitchState();
}

class LabelSwitchState extends State<LabelSwitch> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _switchValue = !_switchValue;
        });
      },
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text(
          widget.name,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w700,
          ),
        ),
        Container(
          width: 40,
          height: 26,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: _switchValue
                ? const Color.fromARGB(255, 0, 188, 212)
                : Colors.grey,
          ),
          padding: EdgeInsets.all(2),
          child: Stack(
            children: [
              AnimatedPositioned(
                duration: Duration(milliseconds: 200),
                curve: Curves.easeIn,
                left: _switchValue ? 14 : 0,
                child: InkWell(
                  onTap: () {
                    setState(() {
                      _switchValue = !_switchValue;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.all(3),
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
