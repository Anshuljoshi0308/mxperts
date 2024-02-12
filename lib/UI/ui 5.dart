import 'package:flutter/material.dart';
import 'package:mxperts/ReusedUse/ReusedCode.dart';

class UiFive extends StatefulWidget {
  const UiFive({super.key});

  @override
  State<UiFive> createState() => _UiFiveState();
}

class _UiFiveState extends State<UiFive> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
        bottomNavigationBar: CoustomBottomNav(
          index: 0,
        ),
        body: Stack(
          children: [
            Image.network(
              "https://s3-alpha-sig.figma.com/img/4b04/171f/5656c657fce0afa53aee149aac201455?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=o7V3wlHbxsS9DvBHcwnpBoQMoTe5SSB65uRt34xsyHc2KQ~O4pzZUIvmvt5R7Sdpoy9sLWU~~2d7MJRqO2-Q6hME-fCsMdKb3ZK4oY9FHux6TI-2Af9cAjdUEk0rIQP2N2J0Ty~x1S3g3gvdb6xqTU1bY10tMVCOUgGn3SAegrrLlQbIc7Cxmay1kBGd2XqvNDa1lTXwA~R0RbuVT4YWCoMJwm9jllxP9u0M~jKsyNl1WiL9bJ-Xx-kC3Ss~lWPKaaA1ZSu3dzfFaFTuTY0Stj2egSTWGuxCPk-BP1ArRleZjHOQHAPa0iYmrU4T-s07ixj7JlxPxx7Ts1PgMHsYhg__",
              height: h,
              width: w,
              fit: BoxFit.fill,
            ),
            Center(
              child: Icon(
               Icons.play_arrow,
                color: Color(0xFF656566),
                size: 65,
              )
            ),

            Positioned(
                top: 45,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   //
                    SizedBox(
                      width: w*0.35,
                    ),
                    Card(
                      color: Colors.black.withOpacity(0.1),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text("Tracking" , style: TextStyle(color: Colors.white, fontSize: 9), ),
                      ),
                    ),
                    Badge(child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Text("Post",style: TextStyle(color: Colors.white, fontSize: 9)),
                    ), backgroundColor: Colors.yellow,),
                     SizedBox( width:  w*0.3,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Search",style: TextStyle(color: Colors.white, fontSize: 12)),
                    )

                  ],
                )),

            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [

                  ],
                ),
                ListTile(
                  subtitle: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.play_arrow,size: 30,),
                      Icon(Icons.star, color: Color(0xFFFBC60C), size: 12,),
                      Icon(Icons.star, color: Color(0xFFFBC60C),size: 12,),
                      Icon(Icons.star, color: Color(0xFFFBC60C),size: 12,),
                      Icon(Icons.star, color: Color(0xFFFBC60C),size: 12,),

                    ],
                  ),
                  trailing: Stack(
                    children: [
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.black,
                      ),
                      Positioned(
                        bottom: 4,
                        child: CircleAvatar(
                          radius: 10,
                          backgroundColor: Colors.yellow,
                          child: Icon(
                            Icons.add,
                            color: Colors.black,
                            size: 12,
                          ),
                        ),
                      )
                    ],
                  ),
                )

              ],
            )



          ],
        ));
  }
}
