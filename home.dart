import 'package:flutter/material.dart';
import 'secondscreen.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final TextEditingController nameInput = TextEditingController();
  final TextEditingController orderInput = TextEditingController();
  final TextEditingController priceInput = TextEditingController();

  String? errorMessage;

  void processData() {

    if (nameInput.text.isEmpty) {

      setState(() {
        errorMessage = "Medicine name required";
      });
    } 
    
    else if (orderInput.text.isEmpty) {

      setState(() {
        errorMessage = "Order required";
    });

    } 
    
    else if (priceInput.text.isEmpty) {

      setState(() {
        errorMessage = "Price required";
      });

    } 
    
    else {

      setState(() {
        errorMessage = null;
      });

      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(
            name: nameInput.text,
            order: orderInput.text,
            price: priceInput.text,
          ),
        ),
      );

    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text("Pharmacy Entry"), //title
      ),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Pharmacy Ordering App"),
            SizedBox(height: 30),
            TextField(
              controller: nameInput,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                constraints: BoxConstraints(maxWidth: 300),
                labelText: "Medicine name:",
              ),
            ),
            SizedBox(height: 30),

            TextField(
              controller: orderInput,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                constraints: BoxConstraints(maxWidth: 300),
                labelText: "Order:",
              ),
            ),

            SizedBox(height: 20),

            TextField(
              controller: priceInput,

              decoration: InputDecoration(
                border: OutlineInputBorder(),
                constraints: BoxConstraints(maxWidth: 300),
                labelText: "Price;",
              ),
          ),

            SizedBox(height: 30),
            if (errorMessage != null)

              Text(
                errorMessage!,
                style: TextStyle(color: const Color.fromARGB(255, 196, 82, 5)),
              ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: () {
                processData();
              },
              child: Text("Submit"),

            )
          ],
        ),
      ),
    );

  }

}