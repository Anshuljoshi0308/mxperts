import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
import 'package:mxperts/Backend/AuthBachend/Checkuser.dart';
import 'package:mxperts/ReusedUse/ReusedCode.dart';
import 'package:mxperts/UI/ui%204.dart';

import 'Registration.dart';

class Login extends StatelessWidget {
  Login({super.key});

  var email = TextEditingController();
  var password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.center,
            height: h,
            width: w,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/fd8f/d4b6/120e4c3c861a128b56a99e56d56e7000?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L1qhGib1yk6QDxM5SKhUYiqYrn7Iufqm8Kx-1cZC0vMvqcL0rKKM6MpFhyyb0BQtTNu~iYxBDAEsfzTsGgAwu68RK-OrpM8yDp3p5GPcpq9U-0wwrz7cMjlNIp2cXB0enO1VZ4i7cABfawavjpMh2XNJQS7LjUPeKvxS36h8vd-neivLE0qQ-5aXDs8nmqoDpV0OKION7o-JULoHVKjZJtrr00GhqTYfo9G3BK-yuxL~fQ5hzxTPx5Hn8JpSFzFYhstGi8AOZkkb8dj~et61GaTNJDu-ZrIgDKaSJjBvrXxYGC766RsiyXpcoc7KZNFsyveD2dJEdF9VkGeEblWL1A__",
                    ),
                    fit: BoxFit.fill)),
            child: Center(
              child: Card(
                color: Colors.white,
                child: Container(
                  height: h * 0.5,
                  width: w * 0.9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Spacer(),
                      Text(
                        "Sing in to your account",
                        style: TextStyle(fontSize: 15),
                      ),
                      Spacer(),
                      FunTextField(
                        controller: email,
                        lable: "Email",
                        hint: "Email",
                        outlineColor: Colors.yellow,
                      ),
                      FunTextField(
                        controller: password,
                        lable: "Password",
                        hint: "Password",
                        outlineColor: Colors.yellow,
                      ),
                      CoustomButton(
                          text: "LOG IN",
                          colors: Color(0xFF011D45),
                          textColor: Colors.yellow,
                          onTap: () {
                            showDialog(context: context, builder: (context){
                              return Center(
                                child: CircularProgressIndicator(),
                              );
                            });

                            Map<String, String> data ={
                              "Email": email.text.toString(),
                              "Password":password.text.toString()
                            };
                            checkUser(data,(){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFourth()));
                            }, (){

                              showDialog(context: context, builder: (context){
                                return Center(
                                  child: Column(
                                    children: [
                                      Text("Login Id or Password Invald"),
                                      OutlinedButton(onPressed: (){
                                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Registration()));
                                      }, child: Text("Register Now"))
                                    ],
                                  ),
                                );
                              });
                            });
                            
                           Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFourth()));
                          }),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "FORGET PASSWORD",
                        style: TextStyle(fontSize: 8, color: Colors.grey),
                      ),
                      Spacer()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
