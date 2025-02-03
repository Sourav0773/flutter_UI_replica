// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class LoginPageReplica extends StatelessWidget {
  const LoginPageReplica({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////////Body///////////////////////////////////////////////////////
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Column(
          children: [
            const SizedBox(height: 120),

            Image.asset(
              'assets/blue.jpg_preview_rev_1.png',
              height: 70,
              width: 70,
            ),

            const SizedBox(height: 25),
            const Text(
              'Welcome Back!',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'Login To Your Account',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 40),
            textFieldDesign(
              icon: Icons.person_3_outlined,
              hintText: 'Username',
            ),

            const SizedBox(height: 30),
            textFieldDesign(
              icon: Icons.lock_outline_rounded,
              hintText: 'Password',
            ),

            const SizedBox(height: 40),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  elevation: 8,
                ),
                onPressed: () {},
                child: Text(
                  'Sign In',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 60),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 80,
                  child: Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: const Text("Or sign in with",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      )),
                ),
                SizedBox(
                  width: 80,
                  child: Expanded(
                    child: Divider(
                      color: Colors.grey,
                      thickness: 1,
                    ),
                  ),
                ),
              ],
            ),
            
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(90, 60),
                    shadowColor: const Color.fromARGB(255, 14, 123, 212),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset('assets/google.jpg', height: 30, width: 30),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(90, 60),
                    padding: EdgeInsets.zero,
                    shadowColor: const Color.fromARGB(255, 14, 123, 212),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset('assets/facebook.png', height: 50, width: 50),
                ),
                const SizedBox(width: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(90, 60),
                    shadowColor: const Color.fromARGB(255, 14, 123, 212),
                    elevation: 8,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {},
                  child: Image.asset('assets/twitter1.png', height: 30, width: 30),
                ),
              ],
            ),

            const SizedBox(height: 70),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an Account?"),
                const SizedBox(width: 6),
                const Text(
                  'Sign Up here',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

////Text field design ////////////////////////////////////////////////////
  Widget textFieldDesign({
    required IconData icon,
    required String hintText,
  }) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 43,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.blue.withOpacity(0.2),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 50),
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: const TextStyle(color: Colors.grey),
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(vertical: 9),
              ),
            ),
          ),
        ),
        Positioned(
          left: -15,
          top: -5,
          child: Container(
            width: 55,
            height: 55,
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.blue.withOpacity(0.3),
                  blurRadius: 6,
                  spreadRadius: 1,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Icon(icon, color: Colors.blue, size: 20),
          ),
        ),
      ],
    );
  }
}
