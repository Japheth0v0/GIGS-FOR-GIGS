import 'package:flutter/material.dart';
import 'package:gigs_for_gigs/components/SignInButton.dart';
import 'package:gigs_for_gigs/components/textfields.dart';


class SignIn extends StatelessWidget {
 SignIn({super.key});

  //creating the controllers for the texts
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  //this is to signin user method
  void signUserIn(){}



  

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:Colors.white24,
      body: SafeArea(//safe area widget  to avoid the notch area
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,//makes it easier when dealing with different devices
            children: [
          const SizedBox( height: 30,),



              //app logo
              Icon(Icons.person,
              size: 150,
              color: Colors.grey[600],),

              const SizedBox(height: 40,),

              //company Moto
              Text("GIGS FOR EVERY GIGGER!!!",
              style: TextStyle(color: Colors.grey[600],
              fontSize:18,
              fontWeight: FontWeight.bold,

              ),
              ),

              const SizedBox(height: 20,),

              //username textfield
              MYTextField(
                controller: usernameController,
               hintText: "Username",
                obscureText: false,
                
                


                ),
             



              const SizedBox(height: 10,),




              //password text field
              MYTextField(
                controller: passwordController,
               hintText: "Password",
                obscureText: true,
                
              ),
              const SizedBox( height: 10,),
               
              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,//this takes the text to the left
                  children: [
                    Text(
                      "Forgot Password?",
                      style: TextStyle(
                        color: Colors.grey[600]
                    ),
                    ),
                  ],
                ),
              ),


              const SizedBox(height: 25,),

              
              ////sign in button
              Signinbutton(
                onTap: signUserIn,
                ),

                const SizedBox(height:30,),                                     
              
              //Dont have an acc?Create one
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Dont have an acount?",
                  style: TextStyle(
                    color: Colors.grey[600],
                  ),),

                  const SizedBox(width: 4),


                  const Text("Sign Up Now.",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),)
                ],
              )
          
              
          
              ],
          ),
        ),
      ),

    );

  }
}

///We created a separate folder  and file to create the textfields