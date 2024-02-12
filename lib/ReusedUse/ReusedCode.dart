import 'package:flutter/material.dart';

class CoustomButton extends StatelessWidget {

  String text ;
  Color colors ;
  Color textColor ;
  void Function()? onTap ;
  CoustomButton ({ required this.text, required this.colors, required this.textColor,  required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(

        onTap: onTap,
        child: Card(
      color: colors,
      child: Container(
        alignment: Alignment.center,
        height: 70,
        width: MediaQuery.of(context).size.width*0.8,
        child: Text("$text",
          style: TextStyle(
            color: textColor
          ),
        ),
      ),
    ));
  }
}


 Container CoustomIconButton ( { required BuildContext context,required IconData icons , required String text,
   required Color color,
 required Color textColor ,
   required Color iconColor

 }){
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width*0.8,
    color: color,
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(icons, color: iconColor,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Text", style: TextStyle(
            fontSize: 15,
            color: textColor
          ),),
        )
      ],
    ),
  );
 }
Container CoustomAssetsIconButton ( { required BuildContext context,required String path , required String text,
  required Color color,
  required Color textColor ,
  required Color iconColor

}){
  return Container(
    height: 50,
    width: MediaQuery.of(context).size.width*0.8,
    color: color,
    alignment: Alignment.center,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ImageIcon(NetworkImage(path) , color:iconColor ,),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("$text", style: TextStyle(
              fontSize: 15,
              color: textColor
          ),),
        )
      ],
    ),
  );
}

class CoustomBottomNav extends StatefulWidget {
  int index ;
   CoustomBottomNav({super.key , required this.index});

  @override
  State<CoustomBottomNav> createState() => _CoustomBottomNavState();
}

class _CoustomBottomNavState extends State<CoustomBottomNav> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (value){
        print(value);
        if(value==2){
          
          showModalBottomSheet(context: context, builder: (context){
            return Container(
              height: MediaQuery.of(context).size.height*0.4,
              
              child: Column(
                children: [
                  Text("Share"),
                  Wrap(
                    children: [

                      
                      
                    ],
                  ),
                ],
              ),
              
              
              
              
            );
          });
          
        }
        
        
        
      },
        currentIndex: 0,
        backgroundColor: Colors.white,
        items: [
      BottomNavigationBarItem(icon: Icon(Icons.home, color: Colors.black,), activeIcon: Icon(Icons.home, color: Colors.yellow,) , label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.favorite_border, color: Colors.black ),activeIcon: Icon(Icons.favorite_border, color: Colors.yellow,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.share, color: Colors.black),activeIcon: Icon(Icons.share, color: Colors.yellow,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.messenger, color: Colors.black),activeIcon: Icon(Icons.messenger, color: Colors.yellow,),label: ""),
      BottomNavigationBarItem(icon: Icon(Icons.person_2_outlined, color: Colors.black),activeIcon: Icon(Icons.person_2_outlined, color: Colors.yellow,),label: ""),
    ]);
  }
}

class CoustomIcon extends StatelessWidget {
  double? height;
  double? width;
  double? boxheight;
  double? boxwidth;
  String path ;
  String text ;

  CoustomIcon({super.key,this.boxheight, this.boxwidth,this.height, this.width, required this.path, required this.text});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
height: boxwidth,
      width: boxheight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network("$path",  height: height,
            width: width,
          fit: BoxFit.fill,
          ),
          Text(text,style: TextStyle(color: Colors.black, fontSize: 8),)

        ],
      ),

    );
  }
}


