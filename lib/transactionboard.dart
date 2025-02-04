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
                SizedBox(width: 140),
                CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/dp.jpg'),
                ),
              ],
            ),

            const SizedBox(height: 40),
            Container(
              width: 300, 
              height: 180, 
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                  colors: [Color.fromARGB(255, 19, 77, 202), Color.fromARGB(255, 3, 56, 154)], 
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
                padding:const EdgeInsets.all(20),
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
          ],
        ),
      ),
    );
  }
}
