import 'package:flutter/material.dart';

class History extends StatefulWidget {
  const History({super.key});

  @override
  State<History> createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double heightRatio = size.height / 915;
    final double widthRatio = size.width / 412;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          clipBehavior: Clip.antiAlias,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(0.24, 0.82),
              radius: 0,
              colors: [
                Colors.white.withOpacity(0.33),
                Colors.black,
              ],
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16 * widthRatio),
                child: Row(
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
                    SizedBox(
                      width: 16 * widthRatio,
                    ),
                    Flexible(
                      child: Text(
                        'Recent History',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.87),
                          fontSize: 32 * widthRatio * heightRatio,
                          fontFamily: 'Gilroy-Bold',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35 * heightRatio,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        bottom: 32 * heightRatio,
                        left: 32 * widthRatio,
                      ),
                      child: Row(
                        children: [
                          Container(
                            width: 120 * widthRatio,
                            height: 120 * heightRatio,
                            decoration: ShapeDecoration(
                              color: Color(0xFFD9D9D9),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 16 * widthRatio,
                          ),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 195 * widthRatio,
                                  child: Text(
                                    'Whatsapp_2104214_nea.mp4',
                                    style: TextStyle(
                                      color: Colors.white.withOpacity(0.87),
                                      fontSize: 16 * widthRatio * heightRatio,
                                      fontFamily: 'Gilroy-Bold',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 6 * heightRatio,
                                ),
                                SizedBox(
                                  width: 184 * widthRatio,
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: 'Date added: ',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.87),
                                            fontSize:
                                                16 * widthRatio * heightRatio,
                                            fontFamily: 'Gilroy-SemiBold',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                        TextSpan(
                                          text: '21-06-2023',
                                          style: TextStyle(
                                            color: Color(0xFF4CFF89),
                                            fontSize:
                                                16 * heightRatio * widthRatio,
                                            fontFamily: 'Gilroy-SemiBold',
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 10 * heightRatio,
                                ),
                                TextButton(
                                  onPressed: () {
                                    // Add your button's onPressed behavior here
                                  },
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 6),
                                    minimumSize: Size(87, 32),
                                    backgroundColor: Color(0xFF1BEB62),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16),
                                    ),
                                  ),
                                  child: Text(
                                    'Re-dub',
                                    style: TextStyle(
                                      color: Color(0xFF0A5222),
                                      fontSize: 16,
                                      fontFamily: 'Gilroy-SemiBold',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                bottom: 100 * heightRatio,
                                right: 16 * widthRatio),
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 15 * widthRatio * heightRatio,
                              ),
                            ),
                          )
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
