import 'package:flutter/material.dart';

class ProfilePostPage extends StatelessWidget {
  ProfilePostPage({super.key});
  List<Map<String, dynamic>> mediaItems = [
    {
      "id": "1",
      "imageUrl":
          "https://myafricacaribbean.com/cdn/shop/products/image_1080x_af80e0b6-1c57-4d26-855a-1955c0d0c00b.png?v=1630235570",
      "isVideo": false
    },
    {
      "id": "2",
      "imageUrl":
          "https://shoppe24.ph/cdn/shop/products/1PxSpunwMeNLG89o27Np90l45a6M8s6LC_1200x.jpg?v=1586007445",
      "isVideo": false
    },
    {
      "id": "3",
      "imageUrl":
          "https://m.media-amazon.com/images/I/81QQ8mhKWpL._AC_UF894,1000_QL80_.jpg",
      "isVideo": false
    },
    {
      "id": "4",
      "imageUrl":
          "https://ever.ph/cdn/shop/products/100000087646-Selecta-Coffee-Crumble-Ice-Cream-750ml-210423_afb59e77-6175-4bc6-8fb0-92eb310613df_300x300.jpg?v=1683437067",
      "isVideo": false
    },
    {
      "id": "5",
      "imageUrl":
          "https://roadtrippers.com/wp-content/uploads/2021/06/spam-museum-7-scaled.jpg",
      "isVideo": false
    },
    {
      "id": "6",
      "imageUrl":
          "https://primomart.ph/cdn/shop/products/REB45_640x640.jpg?v=1659932303",
      "isVideo": false
    },
    {
      "id": "7",
      "imageUrl":
          "https://justasianfood.com/cdn/shop/products/DelMonte100_PineappleJuice33.8oz_front.jpg?v=1620313310",
      "isVideo": false
    },
    {
      "id": "8",
      "imageUrl":
          "https://down-ph.img.susercontent.com/file/886acff91938aee94de97e1163d6f6af",
      "isVideo": false
    },
    {
      "id": "9",
      "imageUrl":
          "https://ph-test-11.slatic.net/p/c485adbb9a323552005abd1906e6ad49.jpg",
      "isVideo": false
    }, 
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: mediaItems.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
        itemBuilder: (context, index) {
          var item = mediaItems[index];
          final bool isVideo = item['isVideo'];
          return Stack(
            children: [
              Image.network(
                "${item['imageUrl']}",
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              if (isVideo)
                Positioned(
                    top: 8,
                    right: 8,
                    child: Icon(Icons.play_circle_fill_outlined))
            ],
          );
        });
  }
}
