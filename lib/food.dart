import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  FoodState createState() => FoodState();
}

class FoodState extends State<Food> {

  String? selectedSize = "14\"";
  // ignore: non_constant_identifier_names
  int default_quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Top burger part/////////////////////////////////
          Stack(
            children: [
              Container(
                height: 360,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 240, 150, 122),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Image.asset('assets/burger.png'),
              ),
              Positioned(
                top: 40,
                left: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.keyboard_arrow_left, color: Colors.black),
                ),
              ),
              Positioned(
                top: 40,
                right: 20,
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite, color: Colors.deepOrange),
                ),
              ),
            ],
          ),

          /////other body parts///////////////////////////////
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Burger Bistro',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                const Icon(Icons.location_city_outlined, color: Colors.red),
                const SizedBox(width: 10),
                Text(
                  'Hotel Sai Lila',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                )
              ],
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                const Icon(Icons.star_border_outlined,
                    size: 30, color: Colors.deepOrange),
                SizedBox(width: 10),
                Text(
                  '4.7',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                ),

                const SizedBox(width: 50),
                const Icon(
                  Icons.delivery_dining,
                  size: 30,
                  color: Colors.deepOrange,
                ),

                const SizedBox(width: 10),
                Text(
                  'Free',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                ),

                const SizedBox(width: 50),
                const Icon(
                  Icons.access_time,
                  size: 30,
                  color: Colors.deepOrange,
                ),

                const SizedBox(width: 10),
                Text(
                  '20 min',
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'Experience the rich and diverse flavors of Burgers cuisine by exploring the finest restaurants in Bangalore. Whether you’re craving traditional classics or modern culinary twists, Bangalore’s vibrant food scene has it all.',
              softWrap: true,
              style: TextStyle(color: Colors.grey),
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Text(
                  'SIZE:',
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 17,
                  ),
                ),
                
                //////size icons row///////////////////////
                const SizedBox(width: 20),
                SizeButtons(
                  name: "10\"",
                  isSelected: selectedSize == "10\"",
                  onTap: () => setState(() => selectedSize = "10\""),
                  buttonType: ButtonType.size_button,
                ),
                const SizedBox(width: 10),
                SizeButtons(
                  name: "14\"",
                  isSelected: selectedSize == "14\"",
                  onTap: () => setState(() => selectedSize = "14\""),
                  buttonType: ButtonType.size_button,
                ),
                const SizedBox(width: 10),
                SizeButtons(
                  name: "16\"",
                  isSelected: selectedSize == "16\"",
                  onTap: () => setState(() => selectedSize = "16\""),
                  buttonType: ButtonType.size_button,
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              'INGRIDENTS',
              style: GoogleFonts.poppins(
                color: const Color.fromARGB(255, 83, 82, 82),
                fontSize: 17,
              ),
            ),
          ),

          ///////ingredient button row////////////////////////////
          const SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizeButtons(
                  icon: Icons.emoji_food_beverage_outlined,
                  isSelected: true,
                  buttonType: ButtonType.ingredient_button,
                ),
                SizeButtons(
                  icon: Icons.eco_outlined,
                  isSelected: true,
                  buttonType: ButtonType.ingredient_button,
                ),
                SizeButtons(
                  icon: Icons.local_fire_department_outlined,
                  isSelected: true,
                  buttonType: ButtonType.ingredient_button,
                ),
                SizeButtons(
                  icon: Icons.whatshot_outlined,
                  isSelected: true,
                  buttonType: ButtonType.ingredient_button,
                ),
                SizeButtons(
                  icon: Icons.lunch_dining_outlined,
                  isSelected: true,
                  buttonType: ButtonType.ingredient_button,
                ),
              ],
            ),
          ),
        ],
      ),

      /////////bottom cart price section///////////////////////////////////
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
            ),
          ],
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "\$32",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),

            //////button design/////////////////////////
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(30),
              ),
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),

              child: Row(
                children: [
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(255, 96, 91, 91),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          default_quantity--;
                        });
                      },
                      icon: Icon(Icons.remove, color: Colors.white, size: 16),
                    ),
                  ),

                  const SizedBox(width: 10),
                  Text(
                    "$default_quantity",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),

                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(255, 96, 91, 91),
                    child: IconButton(
                      onPressed: () {
                        setState(() {
                          default_quantity++;
                        });
                      },
                      icon: Icon(Icons.add, color: Colors.white, size: 16),
                    ),
                  )
                ],
              ),
            ),

            ////cart button/////////////////
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.orange,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: Text("ADD TO CART",
                  style: TextStyle(color: Colors.white, fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }
}

/////////circles with icons ///////////////////
// ignore: constant_identifier_names
enum ButtonType { size_button, ingredient_button }

class SizeButtons extends StatelessWidget {
  final String? name;
  final IconData? icon;
  final double iconSize;
  final TextStyle? textStyle;
  final double size;
  final bool isSelected;
  final VoidCallback? onTap;
  final ButtonType buttonType;

  const SizeButtons({
    super.key,
    this.name,
    this.icon,
    this.iconSize = 24.0,
    this.textStyle,
    this.size = 55.0,
    required this.isSelected,
    this.onTap,
    required this.buttonType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: isSelected
                  ? (buttonType == ButtonType.size_button
                      ? Colors.orange
                      : const Color.fromARGB(255, 247, 219, 209))
                  : Colors.grey[300],
              shape: BoxShape.circle,
            ),
            child: Center(
              child: name != null
                  ? Text(
                      name!,
                      style: textStyle ??
                          TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: isSelected ? Colors.white : Colors.black,
                          ),
                    )
                  : Icon(
                      icon,
                      size: iconSize,
                      color: Colors.deepOrangeAccent,
                    ),
            ),
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
