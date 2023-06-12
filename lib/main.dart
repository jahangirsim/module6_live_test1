import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  List<String> myShippingList = ['Apples', 'Bananas', 'Bread', 'Milk', 'Eggs'];

  MySnackBar(message, context){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message))
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Shopping List'),
        centerTitle: true,
        actions: [IconButton(onPressed: (){MySnackBar('Cart is empty', context);}, icon: Icon(Icons.shopping_cart))],
      ),
      body: ListView.builder(
        itemCount: myShippingList.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              ListTile(
                leading: Icon(Icons.shopping_bag),
                title: Text(
                  myShippingList[index],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
