import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 237, 237, 239),
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
            bottomLeft: Radius.circular(40),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          width: 4,
                          color: Color(0xCAF15800),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: CircleAvatar(
                          radius: 40,
                          backgroundImage: NetworkImage(
                              "https://images.unsplash.com/photo-1580483046931-aaba29b81601?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cnVzc2lhbiUyMGdpcmx8ZW58MHx8MHx8fDA%3D"),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 5,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                        child: Icon(Icons.add_circle_outline),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 20,
                ),
                ProfileCountTitle(
                  title: 'Posts',
                  count: '54',
                  titleColor: const Color.fromARGB(255, 14, 14, 14),
                  countColor: const Color.fromARGB(255, 16, 16, 16),
                ),
                CustomDivider(),
                ProfileCountTitle(
                  title: 'Donated',
                  count: '7',
                  titleColor: Color.fromARGB(255, 14, 14, 14),
                  countColor: Color.fromARGB(255, 16, 16, 16),
                ),
                CustomDivider(),
                ProfileCountTitle(
                  title: 'Likes',
                  count: '162',
                  titleColor: Color.fromARGB(255, 16, 16, 16),
                  countColor: Color.fromARGB(255, 16, 16, 16),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "AILEENLUV",
              style: GoogleFonts.fjallaOne(
                  fontSize: 22, fontWeight: FontWeight.normal),
            ),
            Text(
              "Secretary in Paulinians @paulinians",
              style: GoogleFonts.poppins(
                  fontSize: 15, fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 5,
            ),
          ],
        ),
      ),
    );
  }
}

class ProfileCountTitle extends StatelessWidget {
  const ProfileCountTitle({
    Key? key,
    required this.count,
    required this.title,
    this.titleColor = Colors.black,
    this.countColor = Colors.black,
  }) : super(key: key);

  final String count;
  final String title;
  final Color titleColor;
  final Color countColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(
              fontSize: 22, fontWeight: FontWeight.w600, color: countColor),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: titleColor),
        ),
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      margin: EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(
        border: Border(
          right: BorderSide(
            color: Colors.grey.shade600,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
