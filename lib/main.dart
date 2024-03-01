import 'package:flutter/material.dart';
import 'package:ui/category.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading:Padding(
          padding: const EdgeInsets.only(left:120),
          child: Icon(Icons.car_rental_outlined,color: Colors.purple,),
        ),
        backgroundColor: const Color.fromARGB(255, 39, 34, 34),
        title: Padding(
          padding: const EdgeInsets.only(left:80),
          child: const Text(
            "Carshop",
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
        actions: const [
          Text(
            'USED CARS',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 18,
          ),
          Text(
            'CAR SERVICING',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 18,
          ),
          Text(
            'PART EXCHANGE',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(
            width: 18,
          ),
          Padding(
            padding: EdgeInsets.only(right: 120),
            child: Text(
              'CLEARANCE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: ListView(children: [
        Column(
          children: [
            Divider(
              height: 2,
              color: Colors.black,
            ),
            Stack(
              children:[ Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 39, 34, 34),
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(20.0),
                  ),
                ),
                width: double.infinity,
                height: 180,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(100,20,0,0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Find the Best Sedan for 2021',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Sedan for 2021.',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 30),
                        ),
                        Text(
                          'Compare and discover the best Sedan',
                          style: TextStyle(color: Colors.white),
                        ),
                         Text(
                          'by matters most to you.',
                          style: TextStyle(color: Colors.white),
                        ),
                        
                      ]),
                ),
              ),  
              Positioned(
                left: 700,
                child: 
              Image.asset('assets/images/car3.png',height: 245,)
              )
              ]
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 130),
              child: Row(
                children: [
                  SizedBox(
                    width: 600,
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 10.0, horizontal: 20.0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(width: 0.8),
                        ),
                        hintText: 'Keyword example:Black GTI',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(
                          Icons.search,
                          //size: 5.0,
                        ),
                        fillColor: Color.fromARGB(255, 39, 34, 34),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 18,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 39, 34, 34),
                        borderRadius: BorderRadius.circular(15)),
                    width: 400,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField(
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          prefixIcon: Icon(Icons.format_line_spacing_outlined),
                        ),
                        hint: Text("Relevance"),
                        icon: Icon(Icons.arrow_drop_down_sharp),
                        iconSize: 30,
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                        value: 'All',
                        items: [
                          DropdownMenuItem(
                            value: 'All',
                            child: Text('Relevance'),
                          ),
                          DropdownMenuItem(
                            value: 'Body Type',
                            child: Text('Body Type'),
                          ),
                        ],
                        onChanged: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 1018,
              child: Row(
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 39, 34, 34),
                          borderRadius: BorderRadius.circular(15)),
                      height: 380,
                      width: 200,
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Refine your search',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Brand',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 117,),
                                Icon(Icons.remove_circle_outlined,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Toyata',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 110,),
                                Icon(Icons.circle_rounded,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Audi',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 125,),
                                Icon(Icons.circle_rounded,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'BMW',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 120,),
                                Icon(Icons.circle_rounded,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Model',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 114,),
                                Icon(Icons.add_circle_outlined,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Price',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 121,),
                                Icon(Icons.add_circle_outlined,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  'Body type',
                                  style: TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(width: 87,),
                                Icon(Icons.add_circle_outlined,color: Colors.grey,)
                              ],
                            ),
                          ),
                          Divider(
                            height: 2,
                            color: Colors.black,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: Row(
                              children: [
                                Text(
                                  '1981 cars found',
                                  style:
                                      TextStyle(color: Colors.white, fontSize: 15),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.blue),
                                  ),
                                  child: Text(
                                    'Clear',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 467,
                    child: GridView.builder(
                      itemCount: 6,
                      shrinkWrap: true,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                        mainAxisExtent: 180,
                        maxCrossAxisExtent: 380,
                        childAspectRatio: 1,
                        //crossAxisCount: 3,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        //mainAxisExtent: 100
                      ),
                      itemBuilder: (_, index) => CategoryPage(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    );
  }
}
