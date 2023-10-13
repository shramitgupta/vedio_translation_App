import 'package:flutter/material.dart';
import 'package:sih/homescreen.dart';
import 'package:sih/registration.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 915;
    final double widthRatio = size.width / 412;
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-0.02, 0.82),
              radius: 0,
              colors: [
                Colors.white.withOpacity(0.33000001311302185),
                Colors.black
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // SizedBox(
              //   height: 65 * heightRatio,
              // ),
              Padding(
                padding: EdgeInsets.only(left: 337 * widthRatio),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()),
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Skip',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8700000047683716),
                          fontSize: 16 * widthRatio * heightRatio,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      ImageIcon(
                        const AssetImage("images/right.png"),
                        size: 24 * heightRatio * heightRatio,
                        color: Colors.white.withOpacity(0.8700000047683716),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 28 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 103 * widthRatio),
                child: Text(
                  'echolus',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 64 * widthRatio * heightRatio,
                    fontStyle: FontStyle.italic,
                    fontFamily: 'IBM Plex Sans Condensed',
                    fontWeight: FontWeight.w700,
                    // height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 26 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24 * widthRatio),
                child: Text(
                  'Your email',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 14 * widthRatio * heightRatio,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 3 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your email', // Add your hint text here
                    hintStyle: TextStyle(
                      color: Color(0x990A5222),
                      fontSize: 14 * widthRatio * heightRatio,
                      fontFamily: 'Gilroy-MediumItalic',
                      fontWeight: FontWeight.w400,
                      //  height: 0,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(12.0),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFF8784AD)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 22 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24 * widthRatio),
                child: Text(
                  'Password',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 14 * widthRatio * heightRatio,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 3 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'Enter your password', // Add your hint text here
                    hintStyle: TextStyle(
                      color: Color(0x990A5222),
                      fontSize: 14 * widthRatio * heightRatio,
                      fontFamily: 'Gilroy-MediumItalic',
                      fontWeight: FontWeight.w400,
                      //  height: 0,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    contentPadding: EdgeInsets.all(12.0),
                    border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Color(0xFF8784AD)),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 18 * widthRatio),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8700000047683716),
                        fontSize: 14 * widthRatio * heightRatio,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 28 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button's onPressed behavior here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        Color(0xFF1BEB62), // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                    shadowColor: Color(0x721CEB62), // Shadow color
                    elevation: 8, // Adjust the elevation as needed
                  ),
                  child: Container(
                    width: 364 * widthRatio,
                    height: 56 * heightRatio,
                    alignment:
                        Alignment.center, // Center the child within the button
                    child: Text(
                      'Log in',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF0A5222),
                        fontSize: 16 * widthRatio * heightRatio,
                        fontFamily: 'Gilroy-SemiBold',
                        fontWeight: FontWeight.w400,
                        // height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 46 * heightRatio,
              ),
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  //width: 364,
                  child: Text(
                    'Don’t have an account?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white.withOpacity(0.8700000047683716),
                      fontSize: 14,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 12 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextButton(
                  onPressed: () {
                    // Add your button's onPressed behavior here
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Registration()),
                    );
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.zero, // Remove default padding
                    minimumSize: Size(364 * widthRatio,
                        56 * heightRatio), // Set width and height
                    backgroundColor:
                        Color(0xFF121212), // Button background color
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Color(0xFF1BEB62)),
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Register',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8700000047683716),
                        fontSize: 16 * widthRatio * heightRatio,
                        fontFamily: 'Gilroy-SemiBold',
                        fontWeight: FontWeight.w400,
                        //  height: 0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 32 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 22 * widthRatio),
                child: Row(
                  children: [
                    Container(
                      width: 161 * widthRatio,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white.withOpacity(0.8700000047683716),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 14 * widthRatio),
                      child: Text(
                        'or',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16 * widthRatio * heightRatio,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          letterSpacing: 0.15,
                        ),
                      ),
                    ),
                    Container(
                      width: 160 * widthRatio,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            strokeAlign: BorderSide.strokeAlignCenter,
                            color: Colors.white.withOpacity(0.8700000047683716),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your button's onPressed behavior here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white, // Button background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28),
                    ),
                  ),
                  child: Container(
                      width: 364 * widthRatio,
                      height: 40 * heightRatio,
                      alignment: Alignment
                          .center, // Center the child within the button
                      child: Padding(
                        padding: EdgeInsets.only(left: 85 * widthRatio),
                        child: Row(
                          children: [
                            Image.asset("images/Google.png"),
                            SizedBox(
                              width: 8 * widthRatio,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3 * heightRatio),
                              child: Text(
                                'Sign in with Google',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16 * widthRatio * heightRatio,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  // height: 0.09,
                                  letterSpacing: 0.15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
