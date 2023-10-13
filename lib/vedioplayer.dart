import 'package:flutter/material.dart';
import 'package:sih/buttons/submit.dart';
import 'package:sih/history.dart';

class VedioPlayer extends StatefulWidget {
  const VedioPlayer({required this.selectedLanguages, super.key});
  final List<String> selectedLanguages;

  @override
  State<VedioPlayer> createState() => _VedioPlayerState();
}

class _VedioPlayerState extends State<VedioPlayer> {
  String? _selectedLanguage;

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
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.24, 0.82),
              radius: 0,
              colors: [
                Colors.white.withOpacity(0.33000001311302185),
                Colors.black
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10 * widthRatio),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'echolus',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8700000047683716),
                        fontSize: 36 * heightRatio * widthRatio,
                        fontStyle: FontStyle.italic,
                        fontFamily: 'IBM Plex Sans Condensed',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    ),
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
                  ],
                ),
              ),
              SizedBox(
                height: 51 * heightRatio,
              ),
              Text(
                'Your video is ready',
                style: TextStyle(
                  color: Colors.white.withOpacity(0.8700000047683716),
                  fontSize: 24 * widthRatio * heightRatio,
                  fontFamily: 'Gilroy-SemiBold',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 21 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24 * widthRatio),
                child: Container(
                  width: 364 * widthRatio,
                  height: 237 * heightRatio,
                  decoration: ShapeDecoration(
                    color: Color(0xFFD9D9D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 17 * heightRatio,
              ),
              Padding(
                padding: EdgeInsets.only(left: 46 * widthRatio),
                child: Row(
                  children: [
                    Text(
                      'Choose language to view:',
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.8700000047683716),
                        fontSize: 16 * widthRatio * heightRatio,
                        fontFamily: 'Gilroy-SemiBold',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 11 * widthRatio,
                    ),
                    Container(
                      width: 96 * widthRatio,
                      height: 30 * heightRatio,
                      decoration: ShapeDecoration(
                        color: Color(0xFF333333),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                      child: DropdownButton<String>(
                        isExpanded: true,
                        value: _selectedLanguage,
                        onChanged: (newValue) {
                          setState(() {
                            _selectedLanguage = newValue;
                          });
                        },
                        items: widget.selectedLanguages
                            .map((language) => DropdownMenuItem(
                                  value: language,
                                  child: Container(
                                    width: 96 * widthRatio,
                                    height: 30 * heightRatio,
                                    alignment: Alignment.center,
                                    child: FittedBox(
                                      fit: BoxFit.fill,
                                      child: Text(
                                        language,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ))
                            .toList(),
                        dropdownColor: Color(0xFF333333),
                        style: TextStyle(color: Colors.white),
                        underline: SizedBox(), // Remove the default underline
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: ClickableButton1(
                    widthRatio: widthRatio,
                    heightRatio: heightRatio,
                    onPressed: () {},
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
