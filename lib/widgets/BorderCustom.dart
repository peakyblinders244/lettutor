// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class BorderCustom extends StatelessWidget {
//   final Widget child;
//   final double width;
//   final double height;
//   final Color color;
//   final double radius;
//   final double strokeWidth;
//   final Color strokeColor;
//
//   const BorderCustom({
//     Key? key,
//     required this.child,
//     this.width = 100,
//     this.height = 100,
//     this.color = Colors.black,
//     this.radius = 0,
//     this.strokeWidth = 5,
//     this.strokeColor = Colors.transparent,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         color: color,
//         borderRadius: BorderRadius.circular(radius),
//         border: Border.all(
//           color: strokeColor,
//           width: strokeWidth,
//         ),
//       ),
//       child: child,
//     );
//   }
// }