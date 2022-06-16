import 'package:flutter/material.dart';

import '../models/item_model.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.item}) : super(key: key);
  final Item? item;

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.blueAccent),
        title: Text(
          widget.item!.title!,
          style: const TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 18,right: 18,bottom: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                color: Colors.grey.shade400,
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                  image: NetworkImage(widget.item!.thumb_url!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 10,),
            Text(
              widget.item!.category!,
              style:  TextStyle(
                  color: Colors.blue.shade600,
                fontSize:18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8,),
            Text(
              widget.item!.title!,
              style:  const TextStyle(
                color: Colors.black,
                fontSize:20,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 8,),
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
            ),
            Expanded(child: Container()),
            Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
              ),
              child: RawMaterialButton(
                onPressed: (){},
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6),
                ),
                fillColor: Colors.blue.shade600,
                child: const Text("Rent Now",style:TextStyle(
                  color: Colors.white,
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
