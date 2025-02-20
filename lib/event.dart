import 'package:flutter/material.dart';

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              ////reservation row//////////////////////////
              const SizedBox(height: 50),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                ////back arrow//////////////////////////////
                CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 216, 215, 215),
                  child: const Icon(Icons.arrow_back, color: Colors.black),
                ),
                /////////////////////////////////////////
                const Text(
                  'Reservations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                /////three dot///////////////////
                CircleAvatar(
                  radius: 25,
                  backgroundColor: const Color.fromARGB(255, 216, 215, 215),
                  child: const Icon(Icons.more_vert, color: Colors.black),
                ),
              ]),

              ////////events bar box////////////////
              const SizedBox(height: 30),
              Container(
                padding: const EdgeInsets.all(4),
                height: 52,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: const Color.fromARGB(255, 216, 215, 215),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    eventBar("Upcoming", true),
                    const VerticalDivider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    eventBar("Completed", false, hasDot: true),
                    const VerticalDivider(
                      thickness: 1,
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    eventBar("Cancelled", false),
                  ],
                ),
              ),

              //////////////date boxes///////////////////////////////////////////////
              Container(
                margin: const EdgeInsets.symmetric(vertical: 20),
                height: 140,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    dateBox(
                        date: '14',
                        day: 'wed',
                        color: Colors.deepOrange,
                        isSelected: true,
                        hasDot: true),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '15',
                        day: 'Thu',
                        color: Colors.transparent,
                        isSelected: false),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '16',
                        day: 'Fri',
                        color: Color.fromARGB(255, 237, 233, 233),
                        isSelected: false,
                        hasDot: true),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '17',
                        day: 'Sat',
                        color: Color.fromARGB(255, 237, 233, 233),
                        isSelected: false,
                        hasDot: true),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '18',
                        day: 'Sun',
                        color: Colors.transparent,
                        isSelected: false),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '19',
                        day: 'Mon',
                        color: Colors.transparent,
                        isSelected: false),
                    const SizedBox(width: 10),
                    dateBox(
                        date: '20',
                        day: 'Tue',
                        color: Colors.transparent,
                        isSelected: false),
                    const SizedBox(width: 10),
                  ],
                ),
              ),

              /////////////////////////////////
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Starts in 2h 32min',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),

              ////////Reservation details///////////////
              const SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    width: 500,
                    height: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      color: Colors.grey[200],
                    ),
                  ),
                  Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      child: Container(
                        width: 300,
                        height: 110,
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.vertical(
                              top: Radius.circular(40),
                            )),
                      )),
                  Positioned(
                    top: 13,
                    left: 8,
                    child: const Icon(
                      Icons.dinner_dining,
                      color: Colors.grey,
                      size: 80,
                    ),
                  ),
                  Positioned(
                    left: 85,
                    top: 13,
                    child: const Text(
                      '14',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 124,
                    top: 13,
                    child: const Text(
                      'th',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 145,
                    top: 19,
                    child: const Text(
                      'Celebrate Love at Ge..',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 60,
                    child: const Text(
                      'Reservation ID: 4512E Time: ...',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 96, 94, 94),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 40,
                    right: 80,
                    child: Image.asset(
                      'assets/barcode.jpg',
                      width: 400,
                      height: 240,
                      // ignore: deprecated_member_use
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                  Positioned(
                    top: 120,
                    left: 230,
                    child: Row(
                      children: [
                        const Text(
                          'Table No.5',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 7),
                        divider(),
                        const SizedBox(width: 7),
                        Icon(Icons.chair),
                        const SizedBox(width: 3),
                        const Text(
                          '4',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                      top: 144,
                      left: 230,
                      child: const Text(
                        'Special requests:',
                        style:
                            TextStyle(color: Color.fromARGB(255, 87, 87, 87)),
                      )),
                  Positioned(
                    top: 173,
                    left: 230,
                    child: Row(
                      children: [
                        Container(
                          height: 27,
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.grey[350],
                              borderRadius: BorderRadius.circular(10)),
                          child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 7),
                                child: Icon(Icons.wine_bar),
                              ),
                              const SizedBox(width: 5),
                              const Text('Wine'),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      top: 173,
                      left: 330,
                      child: Row(
                        children: [
                          Container(
                            height: 27,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey[350],
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 9),
                              child: const Text('+2'),
                            ),
                          )
                        ],
                      )),
                ],
              ),

              //////upcoming events////////////////////////////////
              const SizedBox(height: 15),
              Row(
                children: [
                  const Text(
                    'Upcoming Events',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 16,
                    backgroundColor: const Color.fromARGB(181, 248, 210, 198),
                    child: const Text(
                      '6',
                      style: TextStyle(
                        color: Colors.deepOrange,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 4),
              Align(
                alignment: Alignment.topLeft,
                child: const Text(
                  'February',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              ////event box///////////////////////////
              const SizedBox(height: 10),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                      width: 370,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 248, 46, 11),
                      ),
                    ),
                  ),
                  Positioned(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        width: 300,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.grey[300],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 315,
                    child: Icon(
                      Icons.delete,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                  Positioned(
                    left: 20,
                    top: 13,
                    child: const Text(
                      '16',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 60,
                    top: 13,
                    child: const Text(
                      'th',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 86,
                    top: 19,
                    child: const Text(
                      'Romantic dinner',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 53,
                    child: const Text(
                      'Reservation ID: 5152R Time: ..',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 96, 94, 94),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 264,
                    top: 5,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 191, 190, 190),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 5),
              Stack(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 360,
                      height: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.grey[300],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 50,
                    top: 13,
                    child: const Text(
                      '17',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 90,
                    top: 13,
                    child: const Text(
                      'th',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 115,
                    top: 19,
                    child: const Text(
                      'Private Meeting',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 53,
                    top: 53,
                    child: const Text(
                      'Reservation ID: 7285S Time: 9:30..',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 96, 94, 94),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 350,
                    top: 6,
                    child: CircleAvatar(
                      radius: 10,
                      backgroundColor: const Color.fromARGB(255, 191, 190, 190),
                      child: const Icon(
                        Icons.more_horiz,
                        size: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ));
  }
}

/////////// WIDGETS ///////////////////////////////
/////date box design/////////////////////
Widget dateBox({
  required String date,
  required String day,
  required Color color,
  bool isSelected = false,
  bool hasDot = false,
}) {
  return Stack(
    children: [
      Container(
        height: 140,
        width: 100,
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 213, 212, 212)),
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //////date//////////////////
            Center(
              child: Text(
                date,
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.black,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ///////////day////////////////
            Text(
              day,
              style: TextStyle(
                color: isSelected ? Colors.white : Colors.black,
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
      if (hasDot)
        Positioned(
          right: 15,
          top: 43,
          child: orangeDot(
              dotColor: isSelected
                  ? Colors.white
                  : const Color.fromARGB(255, 240, 65, 12)),
        ),
    ],
  );
}

/////event bar structure////////////////
Widget eventBar(String text, bool isSelected, {bool hasDot = false}) {
  return Column(children: [
    Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white : Colors.transparent,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
        if (hasDot)
          Positioned(
            top: 12,
            right: 9,
            child: orangeDot(dotColor: const Color.fromARGB(255, 240, 65, 12)),
          ),
      ],
    )
  ]);
}

/////orange dot////////////////////
Widget orangeDot({required Color dotColor}) {
  return Container(
    height: 6,
    width: 6,
    decoration: BoxDecoration(
      color: dotColor,
      shape: BoxShape.circle,
    ),
  );
}

////divider////
Widget divider() {
  return Container(
    height: 15,
    width: 1,
    color: const Color.fromARGB(255, 151, 149, 149),
  );
}
