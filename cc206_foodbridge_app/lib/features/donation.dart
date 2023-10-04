import 'package:flutter/material.dart';

class Donation extends StatelessWidget{
  const Donation({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Column(
        children: [
        Image.network("https://tse3.mm.bing.net/th?id=OIP.xgn6bhRgPCVyXMiXh16bXAAAAA&pid=Api", 
         width: 200,
            height: 200,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
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
            )
          )
        ],
        ),
        ],
        ),
      );
  }
  
  void main(){
    runApp(MaterialApp(
    home: Donation(),
    ));
  }
}