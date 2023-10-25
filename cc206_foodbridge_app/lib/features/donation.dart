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

class Donation extends StatelessWidget {
  const Donation({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                "https://myafricacaribbean.com/cdn/shop/products/image_1080x_af80e0b6-1c57-4d26-855a-1955c0d0c00b.png?v=1630235570",
                fit: BoxFit.cover,
                width: 500,
                height: 300, // Adjust the height as needed
              ),
            ),
            Positioned(
              top: 250,
              right: 22,
              child: IconButton(
                icon: Icon(
                  Icons.favorite,
                  color: Colors.red,
                  size: 32,
                ),
                onPressed: () {
                  // Handle button tap here
                },
              ),
            ),
            Column(
              children: [
                SizedBox(height: 310), // To push content below the image
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
                  ],
                ),
                SizedBox(height: 15),
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
                      onPressed: () {
                        // Handle button tap here
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
                        Icons.add,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle button tap here
                      },
                    ),
                  ],
                ),
              top: 250, // Adjust the top position as needed
              right: 20, // Adjust the right position as needed
              child: Center(
                child: IconButton(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 32,
                  ),
                  onPressed: () {
                    // Handle button tap here
                  },
                ),
              ),
            ),
            Column(
              children: [
                SizedBox(height: 310), // To push content below the image
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
                  ],
                ),
                SizedBox(height: 15),
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
                      onPressed: () {
                        // Handle button tap here
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
                        Icons.add,
                        size: 25,
                        color: Colors.black,
                      ),
                      onPressed: () {
                        // Handle button tap here
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Handle button tap here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 230, 230),
                    fixedSize: Size(200, 50),
                  ),
                  child: Text(
                    "DONATE",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ],
            ),

          ),
        ],
      ),
    );

          ],
        ),
      ),
    );

  }
}

void main() {
  runApp(MaterialApp(
    home: Donation(),
  ));
}
