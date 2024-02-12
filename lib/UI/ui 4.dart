import 'package:flutter/material.dart';
import 'package:mxperts/ReusedUse/ReusedCode.dart';
import 'package:mxperts/UI/ui%205.dart';

class UiFourth extends StatelessWidget {
  const UiFourth({super.key});

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      bottomNavigationBar: CoustomBottomNav(index: 0,),
      body: Container(
        alignment: Alignment.center,
        height: h,
        width: w,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                  "https://s3-alpha-sig.figma.com/img/fd8f/d4b6/120e4c3c861a128b56a99e56d56e7000?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=L1qhGib1yk6QDxM5SKhUYiqYrn7Iufqm8Kx-1cZC0vMvqcL0rKKM6MpFhyyb0BQtTNu~iYxBDAEsfzTsGgAwu68RK-OrpM8yDp3p5GPcpq9U-0wwrz7cMjlNIp2cXB0enO1VZ4i7cABfawavjpMh2XNJQS7LjUPeKvxS36h8vd-neivLE0qQ-5aXDs8nmqoDpV0OKION7o-JULoHVKjZJtrr00GhqTYfo9G3BK-yuxL~fQ5hzxTPx5Hn8JpSFzFYhstGi8AOZkkb8dj~et61GaTNJDu-ZrIgDKaSJjBvrXxYGC766RsiyXpcoc7KZNFsyveD2dJEdF9VkGeEblWL1A__",
                ),
                fit: BoxFit.fill)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
                height: h * 0.5,
                width: w,
                decoration: BoxDecoration(
                  color: Color(0xFF011D45),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(25),
                      topLeft: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFive()));
                        },
                        child: CoustomIconButton(
                            context: context,
                            icons: Icons.language,
                            text: "Language",
                            color: Color(0xFFF8CE58),
                            textColor: Colors.white,
                            iconColor: Colors.white),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFive()));
                          },
                          child: CoustomAssetsIconButton(
                              context: context,
                              path:
                                  "https://s3-alpha-sig.figma.com/img/62f7/0d9f/3fe9ee1d3fd3465d8317f02b43cb35f9?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=aeeTfdJ6AlaAXCA65yhQZCeojM6q2dX912IXXNzmFwmvOoeYcT18A7wrQHTo4GEwSmk8E0WM8h0yZhDf7zDj9WgtTp0i-ZueMxJfFoG~inv1OhofB9Zb7FnaBPQMZDUE53BWmZlfROZuEHGVvcgo-HHm0J5xlO0AMgXTq7Ak6sjeAH7jRrrtO~YBeL1ZnPnHsJjW821Gqk19P-TZERd8VhqRc6tQD6TQ79QIIoVidNLk8r2bYTp2ordNVds4cjCcr2Gh6j6kVktitNIrIGtKeoUdP6HCOLrB30zu9pH2HzowqKwG4~4P2ayy7z4SoR2fDuUuSOEz1Uxv9rStOTwUvQ__",
                              text: "Privacy Policy ",
                              color: Color(0xFF001533),
                              textColor: Colors.white,
                              iconColor: Colors.white),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFive()));
                          },
                          child: CoustomAssetsIconButton(
                              context: context,
                              path:
                                  "https://s3-alpha-sig.figma.com/img/d9c4/d2a4/8dee56eb062d0812a18d53a2d85c55c0?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=RrOEFFSm-kg3RFU7CEwrso70jN8YHqNGENLDGYZFwLmgG-2VdhQ~uVpAtzw12eKtoEyspnl2tHnnPf~dIVpGDCTyRfMpsw2jcjHULH9FGrgKTZTWOheDe~qoxxpoBX7O6F~7zi67RkORQgPTomhwI9GEEZuWBGSAa32uuaujg16e2QcUhWvgdPLxW8vblrUfuKpEUryNIQsL-2bezaOzGO6v94pxnPX2ZXPVd17IDe98poaS7FcWDuuVQ3SCp49MAwUhqNqW-iS4mF2Pa3VXCPrtN5Oh150dAePgo6J9d~DiIaP6Ps0LM6xNyipNaOw84wlNbeoMJ-SOBLwchGUc8Q__",
                              text: "Term of Use",
                              color: Color(0xFF001533),
                              textColor: Colors.white,
                              iconColor: Colors.white ,),
                        )),
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>UiFive()));
                          },
                          child: CoustomAssetsIconButton(
                              context: context,
                              path:
                              "https://s3-alpha-sig.figma.com/img/c9d4/10c4/786dce30d1204842b6fdd692950320ba?Expires=1708905600&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4&Signature=SBo3Xoac329gE~OfeM-cVFBPPIHSqt6oXnfBXv~skEQWhmtMS5WKOeGArQB9E-tSu1tKrwGntNhKft0TK7lQ~O8FqB6TKF1WHpGyqRb1KDMvztnVqsN8uxQC-hnoNiIK0zgz6zvhKj3gbbFYe3MBXjZSB44G6VPw1KGO0lFa-Z8O4Ee6hpQxBRRGHndIQx4~JYSVQYscp6grRoBIK1S3orCWHumuNRD-uApA4BAsHMSyWG9CkPeaF6sjgHYeak4iV~8O2qGheFr~D4CtiZNRNREJAgVzLfdojubduHDCdQSMroMz-pv~zuQ2eDzbok~GQ~3xOwA2KeObDO7INGw5Eg__",
                              text: "Help & Support",
                              color: Color(0xFF001533),
                              textColor: Colors.white,
                              iconColor: Colors.white),
                        )),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
