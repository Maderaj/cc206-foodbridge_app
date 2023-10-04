import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  const Donation({super.key});
  
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
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
               
                Text(
                  'Guava Pineapple Juice',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
               Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 32,
                ),
                ],
            ),
            Text(
              'True Juice, a combination of natural guava pineapple Juice.',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.normal,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.remove,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
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
                    Icons.add,
                    size: 25,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 5, 230, 230), 
                fixedSize:Size(200, 50),
              ),
              child: Text(
                "DONATE",
                style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
  void main(){
    runApp(MaterialApp(
      home: Donation(),
    ));
  }
