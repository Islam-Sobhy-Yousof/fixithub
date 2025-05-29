import 'package:flutter/material.dart';

class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      0,
      size.height - 20,
      30,
      size.height - 20,
    );
    path.quadraticBezierTo(
      0,
      size.height - 20,
      size.width - 30,
      size.height - 20,
    );
    path.quadraticBezierTo(
      size.width,
      size.height - 20,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

/*

 path.lineTo(0, size.height * 0.85); // Start from bottom left
    
    // Create a smooth curve from bottom left to bottom right
    path.quadraticBezierTo(
      size.width * 0.25, // First control point x
      size.height * 0.85, // First control point y
      size.width * 0.5,  // Middle point x 
      size.height * 0.9, // Middle point y
    );
    
    path.quadraticBezierTo(
      size.width * 0.75,  // Second control point x
      size.height * 0.95, // Second control point y
      size.width,         // End point x
      size.height * 0.8,  // End point y
    );

    path.lineTo(size.width, 0); // Line to top right
    path.close(); // Complete the path

*/


/*


class CurvedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(
      0,
      size.height - 20,
      30,
      size.height - 20,
    );
    path.quadraticBezierTo(
      0,
      size.height - 20,
      size.width - 30,
      size.height - 20,
    );
    path.quadraticBezierTo(
      size.width,
      size.height - 20,
      size.width,
      size.height,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

*/