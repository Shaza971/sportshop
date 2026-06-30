import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_assets.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/navbar.dart';

class shop extends StatelessWidget {
  const shop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title:  Text('All Products',style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
          ),
        actions: [
          Icon(Icons.filter_list_outlined),
        ],
      ),
     
      backgroundColor: AppColors.backgroundColor,

      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: 20),
        child: Column(
          children: [
            prodCard(image: AppAssets.ball, prodName: "Pro Soccer Ball", details: 'FIFA approved match ball', price: "\$29.99"),
            const SizedBox(height: 16),
            prodCard(image: AppAssets.shoes, prodName: "Runner X1", details: 'Lightweight running shoes', price: "\$89.99"),
            const SizedBox(height: 16),
            prodCard(image: AppAssets.jersey, prodName: "Classic Jersey", details: 'Breathable fabric', price: "\$45.00"),
            const SizedBox(height: 16),
            prodCard(image: AppAssets.gym_bag, prodName: "Gym Duffle Bag", details: 'Water-resistant with shoe...', price: "\$35.50"),
            const SizedBox(height: 16),
            prodCard(image: AppAssets.tennis_racket, prodName: "Pro Tennis Racket", details: 'Carbon fiber frame', price: "\$120.00"),
            const SizedBox(height: 16),
            prodCard(image: AppAssets.yoga_mat, prodName: "Yoga Mat", details: 'Non-slip eco friendly', price: "\$22.00"),
          ],
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}

/////////////////////////////wedgets//////////////////////

Widget prodCard({
    required String image,
    required String prodName,
    required String details,
    required String price,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [

          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              image,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  prodName,
                  style: const TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 5),

                Text(
                  details,
                  style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 20,),
                Text(
                  price,
                  style: TextStyle(
                    color:AppColors.pricecolor,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 36,
            height: 36,
            decoration: BoxDecoration(
              color: AppColors.mainColor,
              shape: BoxShape.rectangle,
            ),
            child: const Icon(
              Icons.shopping_cart_outlined,
              color: Colors.white,
              size: 18,
            ),
          ),
        ],
      ),
    );
  }