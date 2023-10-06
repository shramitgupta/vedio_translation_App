import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:sih/history.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _textEditingController = TextEditingController();
// List of available languages
  List<String> selectedLanguages = [];
  List<String> languages = [
    'Hindi',
    'Gujrati',
    'Bengli',
    'Assamese',
    'Telugu',
    'Tamil',
    'Marathi' // Add more languages here
  ];
  @override
  Widget build(BuildContext context) {
    // Use MediaQuery to get the screen size.
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 915;
    final double widthRatio = size.width / 412;

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: double.infinity,
          width: double.infinity,
          color: const Color(0xff121212),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              appBar(widthRatio: widthRatio),
              SizedBox(
                height: 35 * heightRatio, // Use heightRatio here
              ),
              Container(
                width: 380 * widthRatio,
                height: 433 * heightRatio, // Use heightRatio here
                decoration: ShapeDecoration(
                  color: const Color(0xFF282828),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  shadows: const [
                    BoxShadow(
                      color: Color(0x3F000000),
                      blurRadius: 8,
                      offset: Offset(0, 4),
                      spreadRadius: 1,
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 38 * widthRatio,
                        right: 39 * widthRatio,
                        top: 24 * heightRatio, // Use heightRatio here
                      ),
                      child: Text(
                        'Upload your video to begin',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8700000047683716),
                          fontSize: 24 * widthRatio * heightRatio,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                    ),
                    ClickableButton(
                      widthRatio: widthRatio,
                      heightRatio: heightRatio,
                      onPressed: () {
                        // Add your action here when the button is pressed.
                      },
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 50 * heightRatio, // Use heightRatio here
                        left: 16 * widthRatio,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 154 * widthRatio,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Colors.white
                                      .withOpacity(0.8700000047683716),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 9 * widthRatio,
                              right: 9 * widthRatio,
                            ),
                            child: Text(
                              'or',
                              style: TextStyle(
                                color: Colors.white
                                    .withOpacity(0.8700000047683716),
                                fontSize: 24 * widthRatio * heightRatio,
                                fontFamily: 'Gilroy-Medium',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                          Container(
                            width: 154 * widthRatio,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                  width: 1,
                                  strokeAlign: BorderSide.strokeAlignCenter,
                                  color: Colors.white
                                      .withOpacity(0.8700000047683716),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 45 * heightRatio, // Use heightRatio here
                        left: 103 * widthRatio,
                        right: 103 * widthRatio,
                      ),
                      child: Text(
                        'Paste video link',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8700000047683716),
                          fontSize: 24 * widthRatio * heightRatio,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    MyTextField(
                      controller: _textEditingController,
                      widthRatio: widthRatio,
                      heightRatio: heightRatio,
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 16 * heightRatio, // Use heightRatio here
                  left: 16 * widthRatio,
                  right: 16 * widthRatio,
                ),
                child: Container(
                  width: 380 * widthRatio,
                  height: 57 * heightRatio, // Use heightRatio here
                  decoration: ShapeDecoration(
                    color: selectedLanguages.isNotEmpty
                        ? const Color(
                            0xFF1BEB62) // Change the background color to green
                        : const Color(0xFF282828),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    shadows: const [
                      BoxShadow(
                        color: Color(0x3F000000),
                        blurRadius: 8,
                        offset: Offset(0, 4),
                        spreadRadius: 1,
                      )
                    ],
                  ),

                  child: InkWell(
                    onTap: () {
                      showModalBottomSheet(
                          context: context,
                          shape: const RoundedRectangleBorder(
                            // <-- SEE HERE
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(20.0),
                            ),
                          ),
                          builder: (context) {
                            log("sex");
                            return Container(
                              color: const Color(0xff1F1F1F),
                              height: 290 * heightRatio,
                              width: 412 * widthRatio,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.only(top: 14 * heightRatio),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 16 * widthRatio,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: ImageIcon(
                                            const AssetImage(
                                                "images/close.png"),
                                            color: Colors.white,
                                            size: 36 * widthRatio,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 77 * widthRatio,
                                        ),
                                        Text(
                                          'Choose languages',
                                          style: TextStyle(
                                            color: Colors.white.withOpacity(
                                                0.8700000047683716),
                                            fontSize:
                                                20 * widthRatio * heightRatio,
                                            fontFamily: 'Gilroy-SemiBold',
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: -0.41,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3 * heightRatio,
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.only(left: 4 * widthRatio),
                                    child: Text(
                                      '(to dub your video to)',
                                      style: TextStyle(
                                        color: const Color(0xDDA0A0A0),
                                        fontSize: 20 * widthRatio * heightRatio,
                                        fontFamily: 'Gilroy-SemiBold',
                                        fontWeight: FontWeight.w400,
                                        height: 0,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 23 * heightRatio,
                                  ),
                                  Wrap(
                                    spacing: 8 * widthRatio,
                                    runSpacing: 8 * heightRatio,
                                    children: languages.map((language) {
                                      return GestureDetector(
                                        onTap: () {
                                          if (selectedLanguages
                                              .contains(language)) {
                                            setState(() {
                                              selectedLanguages
                                                  .remove(language);
                                            });
                                          } else {
                                            setState(() {
                                              selectedLanguages.add(language);
                                            });
                                          }
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 15 * widthRatio,
                                            vertical: 6 * heightRatio,
                                          ),
                                          decoration: BoxDecoration(
                                            color: selectedLanguages
                                                    .contains(language)
                                                ? const Color(0xFF1BEB62)
                                                : Colors.transparent,
                                            border: Border.all(
                                              color: const Color(0xFF1BEB62),
                                              width: 1,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(16),
                                          ),
                                          child: Text(
                                            language,
                                            style: TextStyle(
                                              color: selectedLanguages
                                                      .contains(language)
                                                  ? const Color(0xFF0A5222)
                                                  : Colors.white,
                                              fontSize:
                                                  16 * widthRatio * heightRatio,
                                              fontFamily: 'Gilroy-Regular',
                                              fontWeight: FontWeight.w400,
                                              height: 0,
                                            ),
                                          ),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                  SizedBox(
                                    height: 16 * heightRatio,
                                  ),
                                  Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: 23 * heightRatio,
                                            right: 25 * widthRatio),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                "Clear",
                                                style: TextStyle(
                                                  color: Color(0xFFB9B9B9),
                                                  fontSize: 16,
                                                  fontFamily: 'Gilroy-SemiBold',
                                                  fontWeight: FontWeight.w400,
                                                  height: 0,
                                                ),
                                              ),
                                            ),
                                            ElevatedButton(
                                              onPressed: () {
                                                // Handle the selected languages here
                                                print(selectedLanguages);
                                                Navigator.of(context).pop();
                                              },
                                              style: ButtonStyle(
                                                backgroundColor:
                                                    MaterialStateProperty
                                                        .resolveWith<Color>(
                                                            (states) {
                                                  if (states.contains(
                                                      MaterialState.disabled)) {
                                                    return Colors
                                                        .grey; // Button color when disabled
                                                  }
                                                  return selectedLanguages
                                                          .isNotEmpty
                                                      ? const Color(0xFF1BEB62)
                                                      : Colors
                                                          .grey; // Button color when enabled
                                                }),
                                                shape: MaterialStateProperty
                                                    .all<OutlinedBorder>(
                                                  RoundedRectangleBorder(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            30),
                                                  ),
                                                ),
                                                padding: MaterialStateProperty
                                                    .all<EdgeInsetsGeometry>(
                                                  EdgeInsets.symmetric(
                                                    vertical: 14 * heightRatio,
                                                    horizontal: 15 * widthRatio,
                                                  ),
                                                ),
                                                elevation: MaterialStateProperty
                                                    .all<double>(8),
                                              ),
                                              child: Text(
                                                'Done',
                                                style: TextStyle(
                                                  color:
                                                      const Color(0xFF121212),
                                                  fontSize: 16 *
                                                      widthRatio *
                                                      heightRatio,
                                                  fontFamily: 'Gilroy-Bold',
                                                  fontWeight: FontWeight.w400,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          });
                    },
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 17 * widthRatio,
                        right: 16 * widthRatio,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            selectedLanguages.isNotEmpty
                                ? 'See ${selectedLanguages.length} languages choosen'
                                : 'Choose Languages',
                            style: TextStyle(
                              color: selectedLanguages.isNotEmpty
                                  ? const Color(0xFF0A5222)
                                  : Colors.white
                                      .withOpacity(0.8700000047683716),
                              fontSize: 16 * widthRatio * heightRatio,
                              fontFamily: 'Gilroy-Medium',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          ImageIcon(
                            AssetImage("images/chevron-right.png"),
                            color: selectedLanguages.isNotEmpty
                                ? const Color(
                                    0xFF1BEB62) // Change the background color to green
                                : Colors.white.withOpacity(0.8700000047683716),
                            size: 24 * heightRatio,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClickableButton1(
                    widthRatio: widthRatio,
                    heightRatio: heightRatio,
                    onPressed: () {
                      // Add your action here when the button is pressed.
                    },
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

//app bar
// ignore: camel_case_types
class appBar extends StatelessWidget {
  const appBar({
    super.key,
    required this.widthRatio,
  });

  final double widthRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20 * widthRatio),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return const History();
                  },
                ),
              );
            },
            child: ImageIcon(
              const AssetImage("images/clock.png"),
              color: Colors.white,
              size: 30 * widthRatio,
            ),
          ),
          Text(
            'Echolus',
            style: TextStyle(
              color: Colors.white.withOpacity(0.8700000047683716),
              fontSize: 36 * widthRatio,
              fontStyle: FontStyle.italic,
              fontFamily: 'ABC Whyte Inktrap Unlicensed Trial',
              fontWeight: FontWeight.w800,
              // height: 0,
            ),
          ),
          CircleAvatar(
            backgroundImage: const AssetImage('images/user.png'),
            backgroundColor: const Color(0xff292929),
            radius: 15 * widthRatio,
          )
        ],
      ),
    );
  }
}

//textformfield
class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final double widthRatio;
  final double heightRatio;

  MyTextField({
    required this.controller,
    required this.widthRatio,
    required this.heightRatio,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 40 * heightRatio, // Use heightRatio here
        right: 16 * widthRatio,
        left: 16 * widthRatio,
      ),
      child: SizedBox(
        width: 348 * widthRatio,
        height: 44 * heightRatio,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white.withOpacity(0.87),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Color(0xFF1BEB62)),
              borderRadius: BorderRadius.circular(4),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(width: 1, color: Color(0xFF1BEB62)),
              borderRadius: BorderRadius.circular(4),
            ),
            contentPadding: const EdgeInsets.all(8),
            hintText: 'Paste your URL here...',
          ),
        ),
      ),
    );
  }
}

class ClickableButton1 extends StatelessWidget {
  final double widthRatio;
  final double heightRatio;
  final VoidCallback onPressed;

  ClickableButton1({
    required this.widthRatio,
    required this.heightRatio,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22 * heightRatio),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(41),
          child: Container(
            width: 348 * widthRatio,
            height: 46 * heightRatio,
            padding: EdgeInsets.symmetric(
              vertical: 14 * heightRatio,
              horizontal: 31 * widthRatio,
            ),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              color: const Color(0xFF1BEB62),
              borderRadius: BorderRadius.circular(41),
              boxShadow: const [
                BoxShadow(
                  color: Color(0xFF1BEB62),
                  blurRadius: 8,
                  offset: Offset(0, 0),
                  spreadRadius: 1,
                ),
              ],
            ),
            child: Center(
              child: Text(
                'Submit',
                style: TextStyle(
                  color: const Color(0xFF121212),
                  fontSize: 16 * widthRatio * heightRatio,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class ClickableButton extends StatefulWidget {
  final double widthRatio;
  final double heightRatio;
  final VoidCallback onPressed;

  ClickableButton({
    required this.widthRatio,
    required this.heightRatio,
    required this.onPressed,
  });

  @override
  _ClickableButtonState createState() => _ClickableButtonState();
}

class _ClickableButtonState extends State<ClickableButton> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 98 * widget.widthRatio,
        right: 98 * widget.widthRatio,
        top: 40 * widget.heightRatio,
      ),
      child: GestureDetector(
        onTapDown: (_) {
          setState(() {
            isPressed = true;
          });
        },
        onTapUp: (_) {
          setState(() {
            isPressed = false;
          });
          widget.onPressed();
        },
        onTapCancel: () {
          setState(() {
            isPressed = false;
          });
        },
        child: Container(
          width: 184 * widget.widthRatio,
          height: 65 * widget.heightRatio,
          decoration: BoxDecoration(
            color:
                isPressed ? const Color(0xFF1BEB62) : const Color(0xFF1E1E1E),
            borderRadius: BorderRadius.circular(40),
            boxShadow: [
              BoxShadow(
                color: const Color(0xFF1BEB62),
                blurRadius: isPressed ? 4 : 8,
                offset: const Offset(0, 0),
                spreadRadius: isPressed ? 2 : 1,
              ),
            ],
            border: Border.all(
              width: 1,
              color: const Color(0xFF1BEB62),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Upload',
                style: TextStyle(
                  color: isPressed ? Colors.black : Colors.white,
                  fontSize: 24 * widget.widthRatio * widget.heightRatio,
                  fontFamily: 'Gilroy-Bold',
                  fontWeight: FontWeight.w500,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8 * widget.widthRatio),
                child: ImageIcon(
                  const AssetImage("images/upload.png"),
                  color: isPressed ? Colors.black : Colors.white,
                  size: 35,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomButton3 extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  CustomButton3({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 86,
        height: 31,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFF1BEB62)),
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white.withOpacity(0.8700000047683716),
              fontSize: 16,
              fontFamily: 'Gilroy-Regular',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
