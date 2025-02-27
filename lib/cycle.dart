import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_shadow/flutter_inset_shadow.dart';

class Cycle extends StatelessWidget {
  const Cycle({super.key});

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
            top: 45,
            left: 22,
            child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    spreadRadius: 5,
                    blurRadius: 7,
                    offset: Offset(5, 5),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 103, 177, 238),
                    const Color.fromARGB(255, 32, 90, 190),
                  ],
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.keyboard_arrow_left,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Positioned(
            top: 57,
            left: 110,
            child: Text(
              'HERO CYCLE - LRO1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 4,
            child: Image.asset(
              'assets/cycle1.png',
              width: 420,
              height: 300,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 580,
              width: 432,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    const Color.fromARGB(255, 51, 51, 78),
                    const Color.fromARGB(255, 1, 1, 22),
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(35),
                  topRight: Radius.circular(35),
                ),
              ),
            ),
          ),
          Positioned(
            top: 400,
            left: 60,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 78),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.1),
                        offset: Offset(-3, -3),
                        blurRadius: 6,
                      ),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.4),
                        offset: Offset(3, 3),
                        blurRadius: 6,
                      )
                    ],
                  ),
                  child: Text(
                    'Description',
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 40),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 24),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 51, 51, 78),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: const Color.fromARGB(255, 212, 211, 211)
                              .withOpacity(0.2),
                          offset: Offset(-3, -3),
                          blurRadius: 6,
                          inset: true),
                      BoxShadow(
                        color: Colors.black.withOpacity(0.5),
                        offset: Offset(3, 3),
                        blurRadius: 6,
                        inset: true,
                      )
                    ],
                  ),
                  child: Text(
                    'Specification',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 196, 194, 194),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 480,
            left: 30,
            child: Text(
              'HERO CYCLE - LR01',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 30,
            child: SizedBox(
              width: 400,
              child: Padding(
                padding: EdgeInsets.only(right: 25),
                child: Text(
                  "When you're looking for cycles in India, give your child safe and reliable bikes with Hero Kids Bicycles. These bikes come with lightweight frames that are easy for kids to handle, fun to ride and feature adjustable saddles and handlebars that can be customized to fit their growing bodies. Cycles are one of the most eco-friendly modes of transport.",
                  maxLines: 9,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                      color: const Color.fromARGB(255, 183, 180, 180),
                      fontSize: 17),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 110,
              width: 432,
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 34, 34, 59),
                border: Border(
                  top: BorderSide(
                    color: Color.fromARGB(255, 46, 46, 68),
                    width: 2,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(5, 5),
                      blurRadius: 15),
                ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60),
                  topRight: Radius.circular(60),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 240,
            child: Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 6,
                    blurRadius: 7,
                    offset: Offset(0, 9),
                  ),
                ],
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    const Color.fromARGB(255, 103, 177, 238),
                    const Color.fromARGB(255, 51, 100, 185),
                  ],
                ),
              ),
              child: Center(
                child: Text(
                  'Add to cart',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 25,
            left: 20,
            child: SizedBox(
              height: 50,
              width: 150,
              child: Center(
                child: Text(
                  '₹10,000',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 25
                  ),
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
