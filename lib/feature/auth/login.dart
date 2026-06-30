import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_assets.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/core/widgets/app-button.dart';
import 'package:sportsapp/feature/auth/singup.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        
        children: [
          Image.asset(
            AppAssets.logo,
            height: 120,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Text(
                'Logo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              );
            },
          ),
          Text("Sport Shop",style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 20,
          ),
          ),
          Text("Welcome back ! Please login,",style: TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
          ),
          SizedBox(height: 20),
          datafield('Email'),
          SizedBox(height: 15),
          datafield("Password"),
          SizedBox(height: 15),
          forgotpassword(),
           SizedBox(height: 15),
          AppButton(buttonname: 'log in'),
          SizedBox(height: 15),
          donthaveacount('create account',context),
        
        ],
      ),
    );
  }

/////////////////////// Widgets Mehods ///////////////////
Widget datafield(String lable) {
  return Container(
   
    padding: const EdgeInsets.symmetric(horizontal: 12),
    child: TextField(
      decoration: InputDecoration(
        labelText: lable,
        border: const OutlineInputBorder(),
       
      )
    ),
  );
}
Widget forgotpassword()
{
  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      GestureDetector(
        child: Text('Forgot Password?',style: TextStyle(color: AppColors.mainColor),),
      ),
    ],
  );
}
  Widget donthaveacount(buttonname, BuildContext context)
  {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Signupscreen()),
      
            );
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white ,
          
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 360,
        child: Center(child: Text(buttonname,style:TextStyle(
          color: AppColors.mainColor,
        ) ,),),
      ),
    );
    
  }
}