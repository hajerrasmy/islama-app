import 'package:flutter/material.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  List<String> Tasbeh = ['سبحان الله ', 'الحمدالله', 'الله اكبر'];
  int index = 0;

  int count = 0;

  double angle = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            Stack(
              children: [
                Container(
                    margin: EdgeInsets.only(left: 60),
                    child: Center(
                        child: Image(
                            image: AssetImage(
                                "assets/images/head of seb7a.png")))),
                Column(
                  children: [
                    SizedBox(
                      height: 78,
                    ),
                    Center(
                        child: Transform.rotate(
                      angle: angle,
                      child: InkWell(
                          onTap: () {
                            if (count == 30) {
                              index++;
                              count = 0;
                              if (index == 2) {
                                index = 0;
                              }
                            }
                            count++;
                            angle += 20;
                            setState(() {});
                          },
                          child: Image(
                              image: AssetImage(
                                  "assets/images/body of seb7a.png"))),
                    )),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Text(
              "عدد التسبيحات",
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 26),
            ),
            Container(
              margin: EdgeInsets.only(top: 30, bottom: 30),
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffB7935F).withOpacity(.57),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                count.toString(),
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              decoration: BoxDecoration(
                  color: Color(0xffB7935F),
                  borderRadius: BorderRadius.circular(20)),
              child: Text(
                Tasbeh[index],
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w400),
              ),
            )
          ],
        ),
      ),
    );
  }
}
