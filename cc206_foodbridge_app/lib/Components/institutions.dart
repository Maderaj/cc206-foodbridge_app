import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InstitutionsPage extends StatefulWidget {
  const InstitutionsPage({Key? key}) : super(key: key);

  @override
  _InstitutionsPageState createState() => _InstitutionsPageState();
}

class _InstitutionsPageState extends State<InstitutionsPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Select Institutions',
            style: GoogleFonts.fjallaOne(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                ),
              ),
              SizedBox(height: 10),
              Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 8.0,
                  ),
                  itemCount: institutions.length,
                  itemBuilder: (BuildContext context, int index) {
                    return buildInstitutionCard(institutions[index]);
                  },
                ),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 5, 230, 230),
                  minimumSize: Size(1500, 50),
                  padding: EdgeInsets.all(10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(11),
                  ),
                ),
                child: Text(
                  'Donate',
                  style: GoogleFonts.archivoNarrow(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
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

  Widget buildInstitutionCard(Institutions institution) {
    return Card(
      elevation: 3.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Image.network(
              institution.imageUrl,
              height: 160,
              width: 190,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Text(
            institution.name,
            style: GoogleFonts.archivoNarrow(
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}

class Institutions {
  final String name;
  final String imageUrl;

  Institutions({required this.name, required this.imageUrl});
}

List<Institutions> institutions = [
  Institutions(
    name: 'Sisters of Mary School Girlstown',
    imageUrl:
        'https://media.licdn.com/dms/image/C5616AQEHCbSFOEwYrA/profile-displaybackgroundimage-shrink_200_800/0/1632462942033?e=2147483647&v=beta&t=kzvR_VBByC23I9hGMcT8F-DjNxc2YAJLCIbpmwXzYYY&fbclid=IwAR0Dv9Rratcv6_sq8v_9N3NTHdphNBpCxfOJxRKmr4f3ttfniddn82EkMPU',
  ),
  Institutions(
    name: 'Sisters of Mary School Boystown',
    imageUrl:
        'https://lh5.googleusercontent.com/p/AF1QipMZ5xvnAUjoMH4sMkiVvvicsjqBvd6fUpoKvgKe=w480-h300-k-n',
  ),
  Institutions(
    name: 'UNICEF',
    imageUrl:
        'https://static.independent.co.uk/2023/06/07/00/06121340-3bd67067-0745-47b3-94b9-20d80a6b2f1f.jpg',
  ),
  Institutions(
    name: 'Gentle Hand Inc.',
    imageUrl:
        'https://lh4.googleusercontent.com/-gmixk84wfQI/TYHLvKf2aVI/AAAAAAAAAOw/ai18PqUViVE/s1600/IMG_8285.jpg',
  ),
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InstitutionsPage(),
    );
  }
}
