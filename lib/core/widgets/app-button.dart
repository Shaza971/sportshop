import 'package:flutter/material.dart';
import 'package:sportsapp/core/utils/app_colors.dart';
import 'package:sportsapp/feature/home/home.dart';

class AppButton extends StatefulWidget {
  final String buttonname;
  const AppButton({super.key, required this.buttonname});
  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>Home()),
      
            );
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.mainColor ,
          borderRadius: BorderRadius.circular(12),
        ),
        height: 50,
        width: 360,
        child: Center(child: Text(widget.buttonname,style: TextStyle(
          color: Colors.white,
        ),),),
      ),
    );
  }
  }
