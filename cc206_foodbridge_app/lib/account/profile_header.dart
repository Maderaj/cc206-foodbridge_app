import 'package:flutter/material.dart';

class ProfileHeaderCard extends StatelessWidget {
  const ProfileHeaderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
              color: Color(0xFF1B1B1B),
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40))),
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
                            )),
                        child: Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: CircleAvatar(
                            radius: 45,
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
                                color: Colors.red, shape: BoxShape.circle),
                            child: Icon(Icons.add_circle_outline)),
                      )
                    ],
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  ProfileCountTitle(
                    title: 'Posts',
                    count: '54',
                  ),
                  CustomDivider(),
                  ProfileCountTitle(
                    title: 'Donated',
                    count: '6',
                  ),
                  CustomDivider(),
                  ProfileCountTitle(
                    title: 'Likes',
                    count: '162',
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "AILEENLUV",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              Text("Secretary in Paulinians @paulinians"),
              SizedBox(
                height: 5,
              ),
              Text(
                "Giving is better than Receiving",
                style: TextStyle(color: Colors.grey.shade400),
              ),
            ],
          )),
    );
  }
}

class ProfileCountTitle extends StatelessWidget {
  const ProfileCountTitle({
    super.key,
    required this.count,
    required this.title,
  });

  final String count;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16, color: Colors.grey),
        )
      ],
    );
  }
}

class CustomDivider extends StatelessWidget {
  const CustomDivider({
    super.key,
  });

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
      ))),
    );
  }
}
