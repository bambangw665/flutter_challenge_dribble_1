import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // String ammotSalary = "+$2000"

    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  height: size.height / 3 + 50,
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
              Container(
                padding: EdgeInsets.only(
                  left: 20,
                ),
                height: 50,
                child: Stack(
                  overflow: Overflow.visible,
                  children: [
                    Positioned(
                      bottom: 20,
                      width: size.width,
                      // right: 30,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Hi Ghulam",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Colors.grey[800],
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                              Text(
                                "Welcome Back",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.grey[500],
                                    fontWeight: FontWeight.w300),
                              ),
                            ],
                          ),
                          Flexible(
                            child: Container(
                              // color: Colors.blue,
                              height: 60,
                              margin: EdgeInsets.only(right: 50),
                              decoration: BoxDecoration(
                                color: Colors.blue[50],
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: SvgPicture.asset(
                                "assets/svg/user_ico.svg",
                                height: 50,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 260,
                width: double.infinity,
                // color: Colors.blue,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  // mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Upcoming Payments",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[800],
                          fontWeight: FontWeight.w800),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.red[100].withOpacity(0.3),
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.red[50].withOpacity(0.8),
                                blurRadius: 3,
                                offset: Offset(0, 8),
                              )
                            ],
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 60,
                                  width: 60,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.red[200],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SvgPicture.asset(
                                    "assets/svg/portfolio.svg",
                                    height: 20,
                                    color: Colors.white70,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Salary",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Belong Interactive",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "+\$2000",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 10),
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.blue[100].withOpacity(0.5),
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                color: Colors.blue[50].withOpacity(0.8),
                                blurRadius: 3,
                                offset: Offset(0, 8),
                              )
                            ],
                          ),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                  height: 60,
                                  width: 60,
                                  padding: EdgeInsets.all(12),
                                  decoration: BoxDecoration(
                                      color: Colors.blue[800],
                                      borderRadius: BorderRadius.circular(20)),
                                  child: SvgPicture.asset(
                                    "assets/svg/portfolio.svg",
                                    height: 20,
                                    color: Colors.white70,
                                  )),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Paypal",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Frelance Payment",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black45,
                                    fontWeight: FontWeight.w800),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text(
                                "\$45:00",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Tranactions",
                      style: TextStyle(
                          fontSize: 15,
                          color: Colors.grey[850],
                          fontWeight: FontWeight.w900),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: size.height / 4,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    // height: 50,
                                    height: 50,
                                    width: 50,
                                    padding: EdgeInsets.all(9),
                                    decoration: BoxDecoration(
                                      color: Color(0xFF212848),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: SvgPicture.asset(
                                      "assets/svg/setting.svg",
                                    color: Colors.white70,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Car Repair",
                                      style: TextStyle(
                                          fontSize: 15,
                                          color: Colors.grey[800],
                                          fontWeight: FontWeight.w800),
                                    ),
                                    Text(
                                      "Belong Interactive",
                                      style: TextStyle(
                                          fontSize: 13,
                                          color: Colors.grey[500],
                                          fontWeight: FontWeight.w300),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          Text(
                            "+\$232.50",
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var controlPoint1 = Offset(30, size.height + 20);
    var controlPoint2 = Offset(size.width - 50, size.height - 200);
    var endPoint = Offset(size.width, size.height);
    var path = Path();
    path.lineTo(0, size.height / 2);
    path.cubicTo(controlPoint1.dx, controlPoint1.dy, controlPoint2.dx,
        controlPoint2.dy, endPoint.dx, endPoint.dy);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
