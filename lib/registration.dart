import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({super.key});

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 915;
    final double widthRatio = size.width / 412;
    return SafeArea(
      child: Scaffold(
        body: Container(
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
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25 * widthRatio * heightRatio,
                      ),
                    ),
                    SizedBox(
                      width: 16 * widthRatio,
                    ),
                    Flexible(
                      child: SizedBox(
                        child: Text(
                          'Registration',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8700000047683716),
                            fontSize: 32 * widthRatio * heightRatio,
                            fontFamily: 'Gilroy-Bold',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 33 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 22 * widthRatio),
                child: Text(
                  'Create a free\naccount',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 32 * widthRatio * heightRatio,
                    fontFamily: 'Gilroy-Bold',
                    fontWeight: FontWeight.w700,
                    // height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 19 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24 * widthRatio),
                child: Text(
                  'Your email',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 14,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              SizedBox(
                height: 4 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.all(10.0), // Adjust the padding as needed
                    hintText: 'Enter your text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          BorderSide(color: Color(0xFF1BEB62), width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  // You can add more properties like onChanged, controller, validator, etc. here
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
                    fontSize: 14,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 4 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.all(10.0), // Adjust the padding as needed
                    hintText: 'Enter your text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          BorderSide(color: Color(0xFF1BEB62), width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  // You can add more properties like onChanged, controller, validator, etc. here
                ),
              ),
              SizedBox(
                height: 22 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24 * widthRatio),
                child: Text(
                  'Confirm Password',
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.8700000047683716),
                    fontSize: 14,
                    fontFamily: 'Gilroy-Medium',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(
                height: 4 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.all(10.0), // Adjust the padding as needed
                    hintText: 'Enter your text',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4.0),
                      borderSide:
                          BorderSide(color: Color(0xFF1BEB62), width: 1.0),
                    ),
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  // You can add more properties like onChanged, controller, validator, etc. here
                ),
              ),
              SizedBox(
                height: 68 * heightRatio,
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
                      'Register',
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
                    'Already have an account?',
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
                      'Log in',
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
            ],
          ),
        ),
      ),
    );
  }
}
