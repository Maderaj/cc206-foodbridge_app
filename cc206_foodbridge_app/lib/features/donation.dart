import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Donation(),
  ));
}

class Donation extends StatefulWidget {
  const Donation({Key? key}) : super(key: key);

  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.network(
                "https://myafricacaribbean.com/cdn/shop/products/image_1080x_af80e0b6-1c57-4d26-855a-1955c0d0c00b.png?v=1630235570",
                fit: BoxFit.cover,
                width: 500,
                height: 300,
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
                  // Handle favorite button tap here
                },
              ),
            ),
            Column(
              children: [
                SizedBox(height: 310),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Guava Pineapple Juice',
                      style: GoogleFonts.fjallaOne(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15),
                Text(
                  'True Juice, a combination of natural guava pineapple Juice.',
                  style: GoogleFonts.poppins(
                    fontSize: 13.8,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                SizedBox(height: 20),
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
                        // Handle remove button tap here
                      },
                    ),
                    Text(
                      '100',
                      style: GoogleFonts.fjallaOne(
                        fontSize: 20,
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
                        // Handle add button tap here
                      },
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/institutions');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 5, 230, 230),
                    fixedSize: Size(200, 50),
                  ),
                  child: Text(
                    "CONTINUE",
                    style: GoogleFonts.archivoNarrow(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            if (index == 4) {
              // If the "Account" icon is pressed, navigate to DrawerHome
              Navigator.pushNamed(context, '/DrawerHome');
            } else {
              setState(() {
                _currentIndex = index;
              });
            }
          },
          selectedItemColor: Colors.lightBlue,
          unselectedItemColor: Colors.blueGrey,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outlined),
              label: 'Add',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Chats',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
