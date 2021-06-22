import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentScreen extends StatefulWidget {
  const PaymentScreen({Key key}) : super(key: key);

  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey[700],
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: SvgPicture.asset(
              "assets/svg/dot_navigation_ico.svg",
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: Container(
        height: size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 30),
              child: Text(
                "Your Card",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF212848),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: size.height / 4,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color(0xFF212848),
              ),
              child: Container(
                margin: EdgeInsets.all(25),
                height: size.height / 5,
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          "assets/svg/sim-card.svg",
                          color: Colors.white70,
                          height: 45,
                        ),
                        SvgPicture.asset(
                          "assets/svg/visa.svg",
                          color: Colors.white70,
                          height: 60,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("4562 1122 4595 7852",
                        style: TextStyle(
                            color: Colors.white70,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "CARD HOLDER",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Ghulam",
                      style: TextStyle(color: Colors.white70, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 30,
              margin: EdgeInsets.only(left: 20),
              child: Text(
                "Paymanet Option",
                style: TextStyle(
                    fontSize: 25,
                    color: Color(0xFF212848),
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Pandding Ammot",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xC9212848),
                      )),
                  Text("\$55.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xC9212848),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Mobile Phone Payment",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xC9212848),
                      )),
                  Text("\$190.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xC9212848),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 15,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Vot",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xC9212848),
                      )),
                  Text("\$4.00",
                      style: TextStyle(
                          fontSize: 15,
                          color: Color(0xC9212848),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            SizedBox(height: 30,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(width: 1, color: Colors.black12)
                ),
              ),
            ),
             SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Total Payment",
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xC9212848),
                      )),
                  Text("\$149.00",
                      style: TextStyle(
                          fontSize: 15, 
                          color: Color(0xC9212848),
                          fontWeight: FontWeight.bold)),
                ],
              ),
            ),
            ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: size.height / 4,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "assets/images/main_bg.jpg",
                      ),
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}


class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(20, size.height );
    var controlPoint2 = Offset(size.width , size.height - 300);
    var endPoint = Offset(size.width, size.height);
    var path = Path();
    path.lineTo(0, 10);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(0, size.height);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

