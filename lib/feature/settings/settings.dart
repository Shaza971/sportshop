import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/navbar.dart';

class settings extends StatelessWidget {
  const settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title:  Text('Settings'),
      ),

      backgroundColor:AppColors.backgroundColor,

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        
        children: [
          
          Text("General",
            style: TextStyle(
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 18, ),
          ),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
          color: Colors.grey.shade300,
       ),
     ),
  child: Column(
    children: [
      
      ListTile(
        leading: Icon(Icons.dark_mode_outlined),
        title: Text("Dark Mode"),
        trailing: Switch(
          value: false,
          onChanged: (value) {},
          activeThumbColor: AppColors.mainColor,
        ),
      ),

      Divider(height: 1),

      ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text("Notifications"),
        trailing: Switch(
          value: true,
          activeThumbColor: AppColors.mainColor,
          onChanged: (value) {},
        ),
      ),

      Divider(height: 1),

      
      ListTile(
        leading: Icon(Icons.language),
        title: Text("Language"),
        trailing: Text("English"),
      ),
    ],
  ),
),
   SizedBox(height:20 ,),
 Text("Account",
            style: TextStyle(
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 18, ),
          ),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
          color: Colors.grey.shade300,
        ),
    ),
    child: Column(
    children: [
      
      ListTile(
        leading: Icon(Icons.lock_outline),
        title: Text("change Password"),
        trailing: null
      ),

      Divider(height: 1),

      ListTile(
        leading: Icon(Icons.shield_outlined),
        title: Text("Privacy Policy"),
        trailing: null
      ),

      Divider(height: 1),

      
      ListTile(
        leading: Icon(Icons.description_outlined),
        title: Text("Terms of Service"),
        trailing: null,
      ),
    ],
  ),
),
SizedBox(height:20 ,),
 Text("About",
            style: TextStyle(
            color: AppColors.mainColor,
            fontWeight: FontWeight.bold,
            fontSize: 18, ),
          ),
         Container(
          margin: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
          color: Colors.grey.shade300,
        ),
    ),
    child: Column(
    children: [
      
      ListTile(
        leading: Icon(Icons.info_outline),
        title: Text("Version"),
        trailing: Text('1.0.0'),
      ),
    ]
    ),
    ),

        ],
      ) ,
      
      bottomNavigationBar: Navbar() ,
    );
  }
}

///////////////////////////////wegdets////////////////////////////////

  Widget buildSettingTile({
    required String title,
    required IconData icon,
    Widget? trailing,
    VoidCallback? onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(18.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            Container(
              width: 42,
              height: 42,
              decoration: BoxDecoration(
                color:AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Icon(
                icon,
               size: 20,
              ),
            ),
            const SizedBox(width: 14),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4.0),
                ],
              ),
            ),
          
          ],
        ),
      ),
    );
  }
