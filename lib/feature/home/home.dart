import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_assets.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/navbar.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        toolbarHeight: 120,
        title:Column( 
           crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text(
          "Discover",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Search products...",
          prefixIcon: Icon(Icons.search),
          filled: true,
          fillColor: Color(0xffF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide.none,
          ),
        ),
      ),
     ),
      ],
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  fCard("Shoes", true),
                  SizedBox(width: 10),
                  fCard("Jerseys", false),
                  SizedBox(width: 10),
                  fCard("Balls", false),
                  SizedBox(width: 10),
                  fCard("Accessories", false),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                "Popular Items",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                childAspectRatio: 0.76,
                children: [
                  productCard(
                    AppAssets.ball,
                    "Pro Soccer Ball",
                    "\$29.99",
                  ),
                  productCard(
                    AppAssets.shoes,
                    "Runner X1",
                    "\$89.99",
                  ),
                  productCard(
                    AppAssets.jersey,
                    "Classic Jersey",
                    "\$49.99",
                  ),
                  productCard(
                    AppAssets.gym_bag,
                    "Gym Duffle Bag",
                    "\$39.99",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}



//////////////////////widgets/////////////////

Widget fCard(String title, bool isSelected) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 22, vertical: 12),
    decoration: BoxDecoration(
      color: isSelected ? Colors.blue : Colors.grey.shade200,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.white : Colors.black,
        fontWeight: FontWeight.w500,
      ),
    ),
  );
}


Widget productCard(String image, String title, String price) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(22),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.05),
          blurRadius: 10,
          offset: Offset(0, 5),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(22),
              ),
              child: Image.asset(
                image,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.favorite_border,
                  size: 18,
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(22),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 3),
              Text(
                price,
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 6),
              SizedBox(
                width: double.infinity,
                height: 34,
                child: ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFEDF4FF),
                    foregroundColor: Colors.blue,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10),
                  ),
                  onPressed: () {},
                  icon: Icon(Icons.shopping_cart_outlined, size: 16),
                  label: Text(
                    "Add",
                    style: TextStyle(fontSize: 14),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}