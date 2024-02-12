import 'package:flutter/material.dart';
class UiSix extends StatelessWidget {
  const UiSix({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.add_circle_outline_rounded),
        title: Image.network("https://s3-alpha-sig.figma.com/img/f702/cb05/bd69916332f28c4925f3b6b3fa6a26ed?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=FkR3gh1h~mK4Dz1p1rH4truzP2yuSdVwLsQK7NtZlj-sjGftPHu50tTIy28YgDIrxXTKh7z80VSCjBqiGiibLvRT6IxEujP4~Xh1r-ymdk7Q8oTtI3qVX6nlJMvYy921hSkdTW~THkN4Nj17R40YRJbo0ynCxxIQTr4H8IB01gSTAN2s~w2lAd1Nn7VyC7XrQeGeycAIznr1QKghTGF90epcJh4Lp5DrTdrZc7lNPTlkGW6Cb1-PPR91aIn5cExFrwRcPxRdF4Rd3MGFtAUkrBAYrLZK3Sx5TsTQpLzfaMZEg0JSrJLB9nda70NIuYgjDx4jnVodzttA-yjFfrBkaQ__", height: 10,width: 40,),
      ),
    );
  }
}
