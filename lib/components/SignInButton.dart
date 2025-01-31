import 'package:flutter/material.dart';

class Signinbutton extends StatelessWidget {
  final Function()? onTap;




  const Signinbutton({super.key,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap:onTap ,
      child: Container(
        padding: const EdgeInsets.all( 20.0),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
          decoration: BoxDecoration(color:Colors.black,
          borderRadius: BorderRadius.circular(10),
          
           ),
          child: const Center(
            child: Text("Sign In",
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),
      ),
    );
  }
}