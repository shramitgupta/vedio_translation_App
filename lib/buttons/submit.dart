// import 'package:flutter/material.dart';

// class ClickableButton1 extends StatelessWidget {
//   final double widthRatio;
//   final double heightRatio;
//   final VoidCallback onPressed;

//   ClickableButton1({
//     required this.widthRatio,
//     required this.heightRatio,
//     required this.onPressed,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.only(bottom: 22 * heightRatio),
//       child: TextButton(
//         onPressed: onPressed,
//         style: TextButton.styleFrom(
//           padding: EdgeInsets.zero,
//           minimumSize: Size(348 * widthRatio, 46 * heightRatio),
//           backgroundColor: const Color(0xFF1BEB62),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(41),
//             side: BorderSide(
//               color: const Color(0xFF1BEB62),
//               width: 1,
//             ),
//           ),
//           shadowColor: const Color(0xFF1BEB62),
//           elevation: 8,
//         ),
//         child: Text(
//           'Submit',
//           style: TextStyle(
//             color: const Color(0xFF121212),
//             fontSize: 16 * widthRatio * heightRatio,
//             fontFamily: 'Gilroy-Bold',
//             fontWeight: FontWeight.w400,
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

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
