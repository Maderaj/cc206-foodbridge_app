import 'package:flutter/material.dart';
import 'package:cc206_foodbridge_app/account/profile_post.dart';
import 'package:cc206_foodbridge_app/account/profile_header.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerHome extends StatefulWidget {
  const DrawerHome({Key? key}) : super(key: key);

  @override
  _DrawerHomeState createState() => _DrawerHomeState();
}

class _DrawerHomeState extends State<DrawerHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 216, 213, 210),
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back_rounded)),
          backgroundColor: Color.fromARGB(255, 5, 230, 220),
          title: Text("PROFILE"),
          titleTextStyle: GoogleFonts.fjallaOne(
              fontSize: 22, fontWeight: FontWeight.normal),
        ),
        endDrawer: Drawer(
          child: ListView(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.menu_open_sharp),
                onTap: () {
                  // Close the drawer when tapped
                  Navigator.pop(context);
                },
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text(
                      'ailen_w',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
              ListTile(
                leading: const Icon(Icons.account_circle),
                title: const Text('Account'),
                onTap: () {
                  Navigator.pushNamed(context, '/Account');
                },
              ),
              ListTile(
                leading: const Icon(Icons.archive),
                title: const Text('Archive'),
                onTap: () {
                  Navigator.pushNamed(context, '/Archive');
                },
              ),
              ListTile(
                leading: const Icon(Icons.notifications_active),
                title: const Text('Your Activity'),
                onTap: () {
                  Navigator.pushNamed(context, '/Your Activity');
                },
              ),
              ListTile(
                leading: const Icon(Icons.person),
                title: const Text('Nametag'),
                onTap: () {
                  Navigator.pushNamed(context, '/Nametag');
                },
              ),
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text('Settings'),
                onTap: () {
                  Navigator.pushNamed(context, '/Settings');
                },
              ),
            ],
          ),
        ),
        body: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [ProfileHeaderCard()];
          },
          body: Column(
            children: [
              TabBar(tabs: [
                Tab(
                  icon: Icon(Icons.grid_3x3_sharp),
                ),
                Tab(
                  icon: Icon(Icons.account_box_outlined),
                ),
              ]),
              Expanded(
                child: TabBarView(children: [
                  ProfilePostPage(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
