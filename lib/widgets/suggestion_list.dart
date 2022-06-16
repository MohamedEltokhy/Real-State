import 'package:flutter/material.dart';
import 'package:realstate/models/item_model.dart';
import 'package:realstate/screens/detail_screen.dart';
import 'package:realstate/widgets/item_card.dart';

class SuggestionList extends StatefulWidget {
  const SuggestionList({Key? key, required this.title, required this.items})
      : super(key: key);

  final String? title;
  final List<Item>? items;

  @override
  _SuggestionListState createState() => _SuggestionListState();
}

class _SuggestionListState extends State<SuggestionList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              widget.title!,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            TextButton(onPressed: () {}, child: const Text("See All")),
          ],
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: double.infinity,
          height: MediaQuery.of(context).size.height / 2.1,
          // height: 350,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: widget.items!.length,
            itemBuilder: (context, index) => ItemCard(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          DetailScreen(item: widget.items![index])),
                );
              },
              item: widget.items![index],
            ),
          ),
        ),
      ],
    );
  }
}
