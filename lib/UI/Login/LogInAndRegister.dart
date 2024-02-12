import 'package:flutter/material.dart';
import 'package:mxperts/ReusedUse/ReusedCode.dart';
import 'package:mxperts/UI/Login/Registration.dart';

import 'Login.dart';

class LoginAndRegister extends StatelessWidget {
  const LoginAndRegister({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return  Scaffold(
      
      body: Container(
        height: h,
width: w,
        decoration: BoxDecoration(

          image: DecorationImage(image: NetworkImage("https://s3-alpha-sig.figma.com/img/fd8f/d4b6/120e4c3c861a128b56a99e56d56e7000?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L1qhGib1yk6QDxM5SKhUYiqYrn7Iufqm8Kx-1cZC0vMvqcL0rKKM6MpFhyyb0BQtTNu~iYxBDAEsfzTsGgAwu68RK-OrpM8yDp3p5GPcpq9U-0wwrz7cMjlNIp2cXB0enO1VZ4i7cABfawavjpMh2XNJQS7LjUPeKvxS36h8vd-neivLE0qQ-5aXDs8nmqoDpV0OKION7o-JULoHVKjZJtrr00GhqTYfo9G3BK-yuxL~fQ5hzxTPx5Hn8JpSFzFYhstGi8AOZkkb8dj~et61GaTNJDu-ZrIgDKaSJjBvrXxYGC766RsiyXpcoc7KZNFsyveD2dJEdF9VkGeEblWL1A__",),fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        
            CoustomButton(text: "LOG IN WITH EMAIL", colors: Color(0xFFF8CE58), textColor: Color(0xFF011D45), onTap: () {
Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Login()));
            },)
            ,CoustomButton(text: "REGISTER", colors: Color(0xFF011D45), textColor: Colors.white, onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder:(context)=>Registration()));
            },),
            SizedBox(
              height: 100,
            )
          ],
        ),
      ),
    );
  }
}
