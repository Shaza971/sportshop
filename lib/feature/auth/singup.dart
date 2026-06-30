import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_assets.dart';
import 'package:sportsapp/core/widgets/app-button.dart';

class Signupscreen extends StatelessWidget {
  const Signupscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            AppAssets.logo,
            height: 100,
            fit: BoxFit.contain,
            errorBuilder: (context, error, stackTrace) {
              return const Text(
                'Logo',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              );
            },
          ),
          Text("create account",style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),),
          SizedBox(height:20),
          Text('full name:'),
          SizedBox(height: 15),
          textfield("full name"),
          SizedBox(height: 15),
          Text('Email:'),
          SizedBox(height: 15),
          textfield("Email"),
          SizedBox(height: 15),
          Text('password:'),
          SizedBox(height: 15),
          textfield("Password"),
           SizedBox(height: 15),
           Text('confirm password:'),
           SizedBox(height: 15),
           textfield("Confirm Password"),
           SizedBox(height: 15),
          terms(
            isChecked: false,
            onChanged: (value) {
              // Handle checkbox state change
            },),
           AppButton(buttonname:'create account'),


        ],
      ),
    )
    );
  }
///////////////////////wedgets//////////////////////////

Widget textfield(String lable) {
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

Widget terms({
  required bool isChecked,
  required ValueChanged<bool?> onChanged,
}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Checkbox(
        value: isChecked,
        activeColor: Colors.green,
        onChanged: onChanged,
      ),

      Expanded(
        child: RichText(
          text: TextSpan(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 14,
            ),
            children: [
              const TextSpan(
                text: 'I agree to the ',
              ),
              TextSpan(
                text: 'Terms of Service',
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
              const TextSpan(
                text: ' and ',
              ),
              TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                  color: Colors.blue[700],
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
}