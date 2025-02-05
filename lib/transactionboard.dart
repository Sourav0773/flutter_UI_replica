import 'package:flutter/material.dart';

class Transactionboard extends StatelessWidget {
  const Transactionboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                children: [
                  const Text(
                    'Dashboard',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                    ),
                  ),

                  ///Profile Pic////////
                  SizedBox(width: 150),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/dp2.jpg'),
                  ),
                ],
              ),

              ///ATM card////////////////
              const SizedBox(height: 40),
              Container(
                width: 300,
                height: 180,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 19, 77, 202),
                      Color.fromARGB(255, 3, 56, 154)
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                      spreadRadius: 2,
                      offset: Offset(5, 5),
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "VISA",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        "•••• •••• •••• 2457",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          letterSpacing: 2,
                        ),
                      ),
                      const Text(
                        "SOURAV PAL",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              //Transaction part//////////
              SizedBox(height: 40),
              Row(
                children: [
                  const Text(
                    'Transactions',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 18,
                    ),
                  ),

                  ///Weekly dropdown box//////////////////////
                  const SizedBox(width: 20),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color.fromARGB(255, 189, 186, 186),
                        width: 1.0,
                      ),
                    ),
                    child: Row(
                      children: [
                        const Text(
                          "Weekly",
                          style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 171, 168, 168),
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.keyboard_arrow_down,
                          size: 24,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  )
                ],
              ),

              const SizedBox(height: 40),
              displayProfiles(
                imageAsset: 'assets/av1.jpg',
                name: 'Sourav Pal',
                payment: 'Payment received',
                amount: '+\$100',
              ),
              displayProfiles(
                imageAsset: 'assets/av2.jpg',
                name: 'Steve Smith',
                payment: 'Payment received',
                amount: '+\$299',
              ),
              displayProfiles(
                imageAsset: 'assets/av3.jpg',
                name: 'Laluprasad',
                payment: 'Payment received',
                amount: '+\$69',
              ),
              displayProfiles(
                imageAsset: 'assets/av4.jpg',
                name: 'Narendra Modi',
                payment: 'Payment received',
                amount: '+\$500',
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {},
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(Icons.house_outlined),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.navigation_outlined),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Image.asset('assets/blue.jpg_preview_rev_1.png', height: 60),
              label: '',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined),
              label: 'Profile',
            ),
            const BottomNavigationBarItem(
              icon: Icon(Icons.message_outlined),
              label: 'Message',
            ),
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}

///Display transaction profile/////////////
Widget displayProfiles({
  required String imageAsset,
  required String name,
  required String payment,
  required String amount,
}) {
  return Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(imageAsset),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text(payment, style: TextStyle(color: Colors.grey)),
            ],
          ),
          Spacer(),
          Text(
            amount,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: Colors.green,
            ),
          ),
        ],
      ),
      SizedBox(height: 8),
      Divider(
        color: Colors.grey,
        thickness: 1,
        indent: 70,
      ),
    ],
  );
}
