import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Select Institutions'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
           
              TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
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
                onPressed: () {
                 
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  onPrimary: Colors.white, 
                  minimumSize: Size(1500, 40),
                  padding: EdgeInsets.all(10), 
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10), 
                  ),
                ),
                child: Text('Donate'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildInstitutionCard(Institutions institution) {
    return Card(
      elevation: 2.0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          
          Image.network(
            institution.imageUrl,
            height: 200, 
            width: 200,  
            fit: BoxFit.cover,
          ),
          SizedBox(height: 8),
         
          Text(
            institution.name,
            style: TextStyle(fontWeight: FontWeight.bold),
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
  Institutions(name: 'Sisters of Mary School Girlstown', imageUrl: 'https://media.licdn.com/dms/image/C5616AQEHCbSFOEwYrA/profile-displaybackgroundimage-shrink_200_800/0/1632462942033?e=2147483647&v=beta&t=kzvR_VBByC23I9hGMcT8F-DjNxc2YAJLCIbpmwXzYYY&fbclid=IwAR0Dv9Rratcv6_sq8v_9N3NTHdphNBpCxfOJxRKmr4f3ttfniddn82EkMPU'),
  Institutions(name: 'Sisters of Mary School Boystown', imageUrl: 'https://lh5.googleusercontent.com/p/AF1QipMZ5xvnAUjoMH4sMkiVvvicsjqBvd6fUpoKvgKe=w480-h300-k-n'),
  Institutions(name: 'UNICEF (United Nations International Childrens Emergency Fund)', imageUrl: 'https://static.independent.co.uk/2023/06/07/00/06121340-3bd67067-0745-47b3-94b9-20d80a6b2f1f.jpg'),
  Institutions(name: 'Gentle Hand Inc.', imageUrl: 'https://lh4.googleusercontent.com/-gmixk84wfQI/TYHLvKf2aVI/AAAAAAAAAOw/ai18PqUViVE/s1600/IMG_8285.jpg'),
];
