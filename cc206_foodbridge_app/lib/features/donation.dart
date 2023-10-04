import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  //actions
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
                  //actions
                },
              ),
            ],
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
