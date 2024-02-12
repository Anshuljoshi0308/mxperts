import 'package:cloud_firestore/cloud_firestore.dart';

Future<String> checkUser( Map<String, String> data, Function onTrue, Function onFalse)  async{
  FirebaseFirestore.instance.collection("UserData").where("Email", isEqualTo: "").get().then((value) {
    if(data["Password"]==value.docs.first.get("Password")){
      onTrue();

    }
    else{
      onFalse();
    }




  });






  return "password";


}