import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SearchField extends StatefulWidget {
  const SearchField({Key? key}) : super(key: key);

  @override
  _SearchFieldState createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        filled: true,
        fillColor: Colors.grey.shade100,
        hintText: "Search....",
        prefixIcon: const Icon(CupertinoIcons.search),
        suffixIcon: const Icon(Icons.filter_alt_outlined),
      ),
    );
  }
}
