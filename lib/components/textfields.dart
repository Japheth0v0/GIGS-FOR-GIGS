import 'package:flutter/material.dart';

class MYTextField extends StatelessWidget {

  final controller;
  final String hintText;
  final bool obscureText;


  const MYTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,

  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  
                  controller: controller,
                  obscureText: obscureText,//after this we created controllers in the sign in .dart (line )

                  decoration: InputDecoration(
                    enabledBorder:  OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black),//when the cursor is not on the border
                      borderRadius: BorderRadius.circular(10),
                    ),
                    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green.shade700),//when the cursor is on the border and pressed
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fillColor: Colors.grey.shade400,
                    filled: true,
                    hintText: hintText,
                    hintStyle: TextStyle(color:Colors. grey[500])
    
                
                  ),
                ),
              );
  
  }
}