import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:functional_textfield/functional_textfield.dart';
import 'package:mxperts/Backend/AuthBachend/RegisterModel.dart';
import 'package:mxperts/Backend/AuthBachend/RegisterUser.dart';
import 'package:mxperts/ReusedUse/ReusedCode.dart';
import 'package:mxperts/UI/Login/Login.dart';
import 'package:mxperts/UI/ui%204.dart';
class Registration extends StatelessWidget {
   Registration({super.key});

  
  var user  = TextEditingController();
  var email  = TextEditingController();

  var pass  = TextEditingController();
  var conPass  = TextEditingController();
  var fieldColrs = Color(0xFF001533);
  
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: Text("Register with skenu", style: TextStyle(
          color: Colors.black
        ),),
        centerTitle: true,
      ),
      backgroundColor: Color(0xFF011D45),
      body: SingleChildScrollView(
        child: Column(
          children: [
           SizedBox(
             height: h*0.1,
           ),
            FunTextField(controller: user, lable: "Username", hint: "Username", fillColor:true,fillColorValue: fieldColrs,outlineColor: fieldColrs,outlinOnFocus: fieldColrs, textColor: Colors.white,notNull: true,),
            FunTextField(controller: email, lable: "Email", hint: "Email", fillColor:true,fillColorValue: fieldColrs,outlineColor: fieldColrs,outlinOnFocus: fieldColrs,textColor: Colors.white,forEmail: true,),
            FunTextField(controller: pass, lable: "Password", hint: "Password", fillColor:true,fillColorValue: fieldColrs,outlineColor: fieldColrs,outlinOnFocus: fieldColrs,textColor: Colors.white, notNull: true,),
            FunTextField(controller: conPass, lable: "Confirm password", hint: "Confirm password", fillColor:true,fillColorValue: fieldColrs,outlineColor: fieldColrs,outlinOnFocus: fieldColrs,textColor: Colors.white, notNull: true,), Container(
              width: w*0.9,
              child: Row(
                children: [
                  Checkbox(value: false, onChanged: (value){

                  }),
                   Text(" Agree terms and condition" , style: TextStyle(color: Colors.white),),

                ],
              ),


            ),
            CoustomButton(text: "Register", colors: fieldColrs, textColor: Colors.white, onTap: (){


              if(pass.text.toString()==conPass.text.toString()){
                Map<String, String> data = {
                  "UserName": user.text.toString(),
                  "Email": email.text.toString(),
                  "Password": pass.text.toString(),
                  "ConfirmPassWord": conPass.text.toString()
                };
                showDialog(context: context, builder: (context){
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                });

                firebaseRegister(data,(){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()));
                });



             }
            })

            ,SizedBox(
              height: h*0.1,
            ),

          ],
        ),
      ),
    );
  }
}
