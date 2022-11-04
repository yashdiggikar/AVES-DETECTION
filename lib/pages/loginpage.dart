import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:studioproject1/main.dart';
import 'package:studioproject1/pages/Signup.dart';
import 'package:studioproject1/pages/auth_page.dart';
class loginpage extends StatefulWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {
  @override
  Widget build(BuildContext context) {
    var emailController = TextEditingController();
    var passwordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
       body:SingleChildScrollView(
         child: ConstrainedBox(
             constraints: BoxConstraints(),
        child:Column(
        children: [
              // width: MediaQuery.of(context).size.width,
              // height:MediaQuery.of(context).size.height*0.3,
              Column(
                children:[SizedBox(height: MediaQuery.of(context).size.height*0.15,),
                  CircleAvatar(
                    radius:50,
                    foregroundImage: AssetImage(
                        "assets/images/circular_avatar.jpeg"
                    ),
                  )
                ],
              ),
          SizedBox(height:MediaQuery.of(context).size.height*(0.06)),
           Container(
            margin: const EdgeInsets.only(left:20,right:20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hello",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold)),
                Text("Sign into your account",style: TextStyle(fontSize: 18,color: Colors.grey[300])),
                SizedBox(height:MediaQuery.of(context).size.height*(0.02)),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 10,
                        spreadRadius: 5,
                        offset: Offset(1, 1),
                        color: Colors.grey.withOpacity(0.4)
                      )
                    ]
                  ),
                  child: TextField(
                    controller:emailController ,
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email,color: Colors.teal,),
                      focusedBorder:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 0.8,
                        )
                      ),
                        enabledBorder:OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.8,
                            )
                        ),
                      border:OutlineInputBorder(
                        borderRadius: BorderRadius.circular(35)
                      )
                    ),
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*(0.02)),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                            blurRadius: 10,
                            spreadRadius: 5,
                            offset: Offset(1, 1),
                            color: Colors.grey.withOpacity(0.4)
                        )
                      ]
                  ),
                  child: TextField(
                    obscureText: true,
                    controller:passwordController,
                    decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.password,color: Colors.teal,),
                        focusedBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.8,
                            )
                        ),
                        enabledBorder:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                              color: Colors.white,
                              width: 0.8,
                            )
                        ),
                        border:OutlineInputBorder(
                            borderRadius: BorderRadius.circular(35)
                        )
                    ),
                  ),
                ),
                SizedBox(height:MediaQuery.of(context).size.height*(0.02)),
                Row(
                  children: [
                    Expanded(child: Container(),),
                    Text("forgot your password?",style: TextStyle(fontSize: 18,color: Colors.grey[300])),
                  ],
                ),


              ],
            )

          ),
          SizedBox(height:MediaQuery.of(context).size.height*(0.03)),
          GestureDetector(
            onTap: (){
              authorizationpage.instance.login(emailController.text.trim(), passwordController.text.trim());
            },
            child: Container(
              margin: const EdgeInsets.only(left:20,right:20),
              width:MediaQuery.of(context).size.width*0.5,
              height:MediaQuery.of(context).size.height*0.08,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                  image: AssetImage(
                      "assets/images/A_black_image.jpg"
                  ),
                  fit: BoxFit.cover
                )
              ),
              child:Center(
                child: Text(
                  "Sign in",
                  style:TextStyle(
                    fontSize:33,
                    fontWeight: FontWeight.bold,
                    color:Colors.white,
                  ),

                 ),
              ),
            ),
          ),
          SizedBox(height:MediaQuery.of(context).size.width*0.3),
          RichText(text: TextSpan(
            text: "Don\'t have an account? ",
            style:TextStyle(
              color:Colors.grey[500],
              fontSize:20
            ),
            children: [
              TextSpan(
              text: " Create",
              style:TextStyle(
                  color:Colors.black,
                  fontSize:20,
                fontWeight: FontWeight.bold
              ),
                recognizer: TapGestureRecognizer()..onTap=()=>Get.to(()=>signuppage())
              )
            ]
          ))
        ],
      ),

    ),
       ),
    );
  }
}
