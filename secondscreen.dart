import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {

  final String name;
  final String order;
  final String price;

  const SecondScreen({
    super.key,
    required this.name,
    required this.order,
    required this.price,
  });

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Medicine details"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },

            icon: Icon(Icons.arrow_back),
          )
        ],

      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Entry summary"),
            SizedBox(height: 20),
            Text("Medicine name: ${widget.name}"),
            SizedBox(height: 10),
            Text("Order: ${widget.order}"),
            SizedBox(height: 10),
            Text("Price: ${widget.price}"),
            SizedBox(height: 20),
            Text("Total cost: "), 
          ],

        ),
      ),

    );
  }

}