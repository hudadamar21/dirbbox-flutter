import 'package:flutter/material.dart';

class Folder {
  final String name;
  final String date;
  final String imagePath;
  final Color bgColor;
  final Color fgColor;

  const Folder({
    required this.name,
    required this.date,
    required this.imagePath,
    required this.bgColor,
    required this.fgColor,
  });
}

const List<Folder> folders = [
  Folder(
    name: "Mobile Apps",
    date: "December 20.2023",
    imagePath: 'assets/icons/folder-blue.png',
    bgColor: Color(0xFFEEF7FE),
    fgColor: Color(0xFF415EB6),
  ),
  Folder(
    name: "SVG Icons",
    date: "December 20.2023",
    imagePath: 'assets/icons/folder-orange.png',
    bgColor: Color(0xFFFFFBEC),
    fgColor: Color(0xFFFFB110),
  ),
  Folder(
    name: "Prototypes",
    date: "December 20.2023",
    imagePath: 'assets/icons/folder-red.png',
    bgColor: Color(0xFFFEEEEE),
    fgColor: Color(0xFFAC4040),
  ),
  Folder(
    name: "Avatars",
    date: "December 20.2023",
    imagePath: 'assets/icons/folder-cyan.png',
    bgColor: Color(0xFFF0FFFF),
    fgColor: Color(0xFF23B0B0),
  ),
];
