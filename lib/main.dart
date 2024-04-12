import 'package:flutter/material.dart';
import 'package:gigs_for_gigs/pages/sign_in.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GIGS FOR GIGS',
      
      home:SignIn(),
    );
  }
}


