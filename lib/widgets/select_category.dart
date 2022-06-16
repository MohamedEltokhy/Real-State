import 'package:flutter/material.dart';

class SelectCategory extends StatefulWidget {
  const SelectCategory({Key? key}) : super(key: key);

  @override
  _SelectCategoryState createState() => _SelectCategoryState();
}

class _SelectCategoryState extends State<SelectCategory> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height/5,
      width: size.width,
      padding: const EdgeInsets.only(right: 8),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          categoryButton(Icons.house_rounded, "House"),
          categoryButton(Icons.villa_rounded, "Villa"),
          categoryButton(Icons.apartment_rounded, "Apartment"),
          categoryButton(Icons.castle_rounded, "Castles"),
        ],
      ),
    );
  }
  Widget categoryButton(IconData icon,String? text){
    return Container(
      margin: const EdgeInsets.all(18),
      padding: const EdgeInsets.all(8),
      width: 90,
      height: 90,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade100),
      ),
      child: InkWell(
        onTap: (){},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon,size: 32,color: const Color(0xFF2972FF),),
            Text(text!),
          ],
        ),
      ),
    );
  }
}
