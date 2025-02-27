import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Cycle1 extends StatelessWidget {
  const Cycle1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(255, 24, 104, 169),
          ),
          Positioned.fill(
            child: ClipPath(
              clipper: DiagonalClipper(),
              child: SizedBox(
                height: 200,
                child: ClipPath(
                  clipper: DiagonalClipper(),
                  child: Container(
                    color: const Color.fromARGB(255, 23, 23, 37),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            right: 15,
            child: GlassmorphicContainer(
              width: 400,
              height: 250,
              borderRadius: 30,
              linearGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.2)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: 0,
              blur: 20,
              borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.0)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Positioned(
            top: 70,
            right: -30,
            child: GlassmorphicContainer(
              width: 400,
              height: 250,
              borderRadius: 30,
              linearGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.1),
                  Colors.white.withOpacity(0.2)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              border: 0,
              blur: 20,
              borderGradient: LinearGradient(
                colors: [
                  Colors.white.withOpacity(0.5),
                  Colors.white.withOpacity(0.0)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              child: Center(
                child: Image.asset(
                  'assets/cycle.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/////clipping the //BLACK// color widget diagonally////////////////
class DiagonalClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(-23, size.height); // starting point
    path.lineTo(size.width, size.height * -0.25); // diagonal line
    path.lineTo(size.width, 0); // bottom right corner
    path.lineTo(0, 0); // top right corner
    path.close(); // close the path
    return path;
  }

  @override
  bool shouldReclip(DiagonalClipper oldClipper) => false;
}
