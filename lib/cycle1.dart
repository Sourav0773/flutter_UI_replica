import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

class Cycle1 extends StatelessWidget {
  const Cycle1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> itemsData = [
      {
        'image': 'assets/cycle.png',
        'subName': 'Mountain Cycle',
        'itemName': 'HERO CYCLE - XR02',
        'price': '₹15,000',
      },
      {
        'image': 'assets/cycle1.png',
        'subName': 'Road Cycle',
        'itemName': 'TREK CYCLE - SLX04',
        'price': '₹20,000',
      },
      {
        'image': 'assets/cycle2.png',
        'subName': 'Hybrid Cycle',
        'itemName': 'Bianchi CYCLE - HC03',
        'price': '₹18,000',
      },
      {
        'image': 'assets/cycle3.png',
        'subName': 'Electric Cycle',
        'itemName': 'E-CYCLE - E202',
        'price': '₹25,000',
      },
      {
        'image': 'assets/helmet.png',
        'subName': 'Protective Gear',
        'itemName': 'Sports Helmet - SG001',
        'price': '₹2,500',
      },
      {
        'image': 'assets/burger.png',
        'subName': 'Protective Gear',
        'itemName': 'Sports Helmet - SG001',
        'price': '₹2,500',
      },
    ];

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
            top: 90,
            right: -20,
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
          Positioned(
            top: 50,
            right: -60,
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
                  'assets/cycle1.png',
                ),
              ),
            ),
          ),
          Positioned(
            top: 420,
            left: 22,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 70,
                    width: 70,
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
                      child: Text(
                        'All',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  TransparentButton(icon: Icons.pedal_bike),
                  SizedBox(width: 20),
                  TransparentButton(icon: Icons.directions_walk),
                  SizedBox(width: 20),
                  TransparentButton(icon: Icons.headphones),
                  SizedBox(width: 20),
                  TransparentButton(icon: Icons.landscape),
                  SizedBox(width: 20),
                ],
              ),
            ),
          ),
          Positioned(
            top: 520,
            left: 18,
            child: SizedBox(
              width: 390,
              height: 500,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.75,
                ),
                itemCount: itemsData.length,
                itemBuilder: (context, index) {
                  return Items(
                    image: Image.asset(
                      itemsData[index]['image']!,
                    ),
                    subName: itemsData[index]['subName']!,
                    itemName: itemsData[index]['itemName']!,
                    price: itemsData[index]['price']!,
                  );
                },
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: 100,
              width: 432,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 19, 19, 29),
                border: Border(
                  top: BorderSide(
                    color: const Color.fromARGB(255, 25, 25, 37),
                    width: 2,
                  ),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.6),
                      offset: Offset(5, 5),
                      blurRadius: 15),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 70,
                      width: 80,
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
                        Icons.pedal_bike,
                        color: const Color.fromARGB(255, 207, 201, 201),
                        size: 30,
                      )),
                    ),
                    Icon(Icons.map,
                        color: const Color.fromARGB(255, 164, 162, 162),
                        size: 30),
                    Icon(Icons.shopping_cart,
                        color: const Color.fromARGB(255, 164, 162, 162),
                        size: 30),
                    Icon(Icons.person,
                        color: const Color.fromARGB(255, 164, 162, 162),
                        size: 30),
                    Icon(Icons.note,
                        color: const Color.fromARGB(255, 164, 162, 162),
                        size: 30)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////

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

//////Transparent Buttons///////////////////////////
class TransparentButton extends StatelessWidget {
  final IconData icon;

  const TransparentButton({super.key, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(4, 4),
            blurRadius: 10,
          ),
        ],
      ),
      child: GlassmorphicContainer(
        width: 70,
        height: 70,
        borderRadius: 10,
        linearGradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 108, 187, 251).withOpacity(0.2),
            const Color.fromARGB(255, 30, 108, 171).withOpacity(0.4)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        border: 1,
        blur: 30,
        borderGradient: LinearGradient(
          colors: [
            const Color.fromARGB(255, 154, 207, 249).withOpacity(0.2),
            const Color.fromARGB(255, 35, 111, 174).withOpacity(0.4)
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        child: Center(
          child: Icon(
            icon,
            size: 50,
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
      ),
    );
  }
}

/////items/////////////////////////////
class Items extends StatelessWidget {
  final Image image;
  final String subName;
  final String itemName;
  final String price;

  const Items({
    super.key,
    required this.image,
    required this.subName,
    required this.itemName,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      width: 190,
      height: 270,
      borderRadius: 30,
      linearGradient: LinearGradient(
        colors: [
          const Color.fromARGB(255, 154, 207, 249).withOpacity(0.2),
          const Color.fromARGB(255, 16, 124, 213).withOpacity(0.4),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      border: 1,
      blur: 80,
      borderGradient: LinearGradient(
        colors: [
          Colors.white.withOpacity(0.1),
          const Color.fromARGB(255, 38, 102, 154).withOpacity(0.1)
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 15),
          Padding(
            padding: const EdgeInsets.only(left: 140),
            child: Icon(
              Icons.favorite_border_outlined,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              height: 100,
              width: 100,
              child: image,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              subName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              itemName,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              price,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(height: 15),
        ],
      ),
    );
  }
}
