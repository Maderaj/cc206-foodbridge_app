import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Donation(),
  ));
}

class Donation extends StatelessWidget {
  const Donation({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 5, 230, 230),  
          centerTitle: true,
          title: Text('Donation',
          style:TextStyle(color: Colors.black),
          ),  
          leading: IconButton(
            icon: Icon(Icons.arrow_back,
            color: Colors.black,),
            onPressed: () {
             
            },
          ),
        ),
      body: Column(
        children: [
          Image.network(
            "https://tse3.mm.bing.net/th?id=OIP.xgn6bhRgPCVyXMiXh16bXAAAAA&pid=Api",
            width: 200,
            height: 200,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.favorite,
                color: Colors.red,
                size: 32,
              ),
              Text(
                'Guava Pineapple Juice',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(
                  Icons.add,
                  size: 32,
                  color: Colors.blue,
                ),
                onPressed: () {
                 

                },
              ),
              Text(
                '100',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.remove,
                  size: 32,
                  color: Colors.blue,
                ),
                onPressed: () {

                },
              ),
            ],
          ),

          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
            ),
            child: Text(
              "Continue",
              style: TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
   
  }

  void main() {
    runApp(MaterialApp(
      home: Donation(),
    ));
  }
}
