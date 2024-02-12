import 'package:flutter/material.dart';

import '../Login/LogInAndRegister.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}


class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {
    // TODO: implement initState

    Future.delayed(Duration(seconds: 1)).whenComplete(() {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (contect)=> LoginAndRegister()));

    });

    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF8E058),
      body: Center(
        child: SizedBox(
            width: 200,
            height: 150,
            child: FadeInImage(
              placeholder: NetworkImage(
                  "https://img.freepik.com/free-photo/abstract-solid-shining-yellow-gradient-studio-wall-room-background_1258-88679.jpg?w=740&t=st=1707731827~exp=1707732427~hmac=71a5aac8498ff7d4a11af61b56e0ea6d376797982336a64454730e3a38ced0c2"),
              image: NetworkImage(
                  "https://s3-alpha-sig.figma.com/img/f702/cb05/bd69916332f28c4925f3b6b3fa6a26ed?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FkR3gh1h~mK4Dz1p1rH4truzP2yuSdVwLsQK7NtZlj-sjGftPHu50tTIy28YgDIrxXTKh7z80VSCjBqiGiibLvRT6IxEujP4~Xh1r-ymdk7Q8oTtI3qVX6nlJMvYy921hSkdTW~THkN4Nj17R40YRJbo0ynCxxIQTr4H8IB01gSTAN2s~w2lAd1Nn7VyC7XrQeGeycAIznr1QKghTGF90epcJh4Lp5DrTdrZc7lNPTlkGW6Cb1-PPR91aIn5cExFrwRcPxRdF4Rd3MGFtAUkrBAYrLZK3Sx5TsTQpLzfaMZEg0JSrJLB9nda70NIuYgjDx4jnVodzttA-yjFfrBkaQ__" ,),

              fit: BoxFit.fill,
            )),
      ),
    );
  }
}
