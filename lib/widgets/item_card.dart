import 'package:flutter/material.dart';

import '../models/item_model.dart';

class ItemCard extends StatefulWidget {
  final Function() onTap;
  final Item? item;
  const ItemCard({Key? key, required this.onTap,required this.item}) : super(key: key);

  @override
  _ItemCardState createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
     width: 270,
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
        color: const Color(0xfcf9f8),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: InkWell(
        onTap: widget.onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 160,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.shade200,
                  image: DecorationImage(
                    image: NetworkImage(widget.item!.thumb_url!),
                    fit: BoxFit.cover
                  )
                ),
              ),
              const SizedBox(height: 8,),
              Text(
                  widget.item!.category!,
                style: TextStyle(
                  color: Colors.blue.shade600,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),
              ),
              const SizedBox(height: 5,),
              Text(
                widget.item!.title!,
                style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 5,),
              Row(
                children:  [
                  const Icon(Icons.location_on,color: Colors.grey,),
                  Text(widget.item!.location!,
                  style: const TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.grey,
                  ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
              const SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                  "${widget.item!.price!}\$ / Month",
                    style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(onPressed: (){}, icon: const Icon(Icons.favorite_outline),),

                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
