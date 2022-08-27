import 'package:flutter/material.dart';

class Auth extends StatelessWidget {
  void _isLoggedIn(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/home');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(widget.title),
      // ),
      body: Container(
        margin: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: const Text(
                'Good Afternoon\nWhitecoode',
                style: TextStyle(
                    fontSize: 25.00,
                    color: Colors.white,
                    fontWeight: FontWeight.w400),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Welcome to',
                    style: TextStyle(
                        fontSize: 20.00,
                        color: Colors.white,
                        fontWeight: FontWeight.w400),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 0, bottom: 15),
                    child: Row(
                      children: const [
                        Text(
                          'One',
                          style: TextStyle(
                              fontSize: 30.00,
                              color: Colors.white,
                              fontWeight: FontWeight.w600),
                        ),
                        Text(
                          'Bank',
                          style: TextStyle(
                              fontSize: 30.00,
                              color: Colors.red,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                  const Text(
                    'Powered by Sterling',
                    style: TextStyle(
                        fontSize: 15.00,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 30, bottom: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      margin: const EdgeInsets.only(right: 5),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.red, width: 2),
                        borderRadius:
                            const BorderRadius.all(Radius.elliptical(30, 30)),
                        color: Colors.black,
                      ),
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.black, width: 2),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                      child: TextButton(
                        onPressed: () => _isLoggedIn(context),
                        child: const Icon(
                          Icons.remove_red_eye_outlined,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 20, bottom: 50),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(30),
                ),
                color: Colors.red,
              ),
              child: TextButton(
                onPressed: () => _isLoggedIn(context),
                child: const Text(
                  'Register',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: () => _isLoggedIn(context),
                          backgroundColor: Colors.red,
                          child: const Icon(Icons.home),
                        ),
                        const Text(
                          'Branch\nLocator',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.red,
                          child: const Icon(Icons.location_searching_outlined),
                        ),
                        const Text(
                          'ATM\nLocator',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        FloatingActionButton(
                          onPressed: () {},
                          backgroundColor: Colors.red,
                          child: const Icon(Icons.chat),
                        ),
                        const Text(
                          'Live\nLocator',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w400),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Text(
                    'Created by: whitecoode',
                    style: TextStyle(color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: const Color.fromRGBO(255, 255, 255, 0.5),
    );
  }
}
