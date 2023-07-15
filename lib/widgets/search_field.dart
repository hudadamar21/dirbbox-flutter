import 'package:dirbbird/consts/PADDING_X.dart';
import 'package:flutter/material.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: PADDING_X,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.search),
          prefixIconColor: Colors.grey[800],
          hintText: 'Search Folder',
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey.shade200),
          ),
          contentPadding: const EdgeInsets.all(16),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(
              color: Colors.grey.shade300,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
