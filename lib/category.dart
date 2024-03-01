import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     // height: 150,
      padding: EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromARGB(255, 39, 34, 34),
      ),
      child: Column(
        children: [

        Stack(
        children:[ Image.asset('assets/images/car3.png',height: 80,)]),
        Text('Audi',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        Text('1.2 PureTech feel 5dr,2016',style: TextStyle(color: Colors.grey),),
        Text('N2,200,000 N2,200,000',style: TextStyle(color: Colors.lightBlue),),
        Divider(
          height: 1,
          color: Colors.black,
        ),
        Row(
          children: [
            Text('Bluetooth|DAB|NO tax',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 75,),
            Icon(Icons.favorite_border,color: Colors.grey,),
          ],
        )],
      ),
    );
  }
}