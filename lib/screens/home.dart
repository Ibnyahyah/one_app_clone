import 'package:flutter/material.dart';

import '../Widgets/floated_button.dart';
import '../Widgets/drawer.dart';

class Home extends StatelessWidget {
  Widget buildHeader(String title) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 10),
      child: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 16,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }

  void logout(BuildContext context) {
    Navigator.of(context).pushReplacementNamed('/');
  }

  void _showBottomSheet(BuildContext context) {
    showBottomSheet(
      context: context,
      builder: (_) {
        // return Text('data');
        return GestureDetector(
          child: Container(
            width: 100,
            height: 100,
            child: Text('Heelo'),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Icon(
          Icons.incomplete_circle_rounded,
          color: Colors.white,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: Row(
              children: [
                const Icon(
                  Icons.circle_notifications_rounded,
                  color: Colors.grey,
                  size: 15,
                ),
                IconButton(
                  icon: const Icon(
                    Icons.logout_outlined,
                    color: Colors.white,
                    size: 15,
                  ),
                  onPressed: () => logout(context),
                ),
              ],
            ),
          ),
        ],
        elevation: 0,
        backgroundColor: Colors.red,
      ),
      drawer: const MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Hi, Whitecoode'),
                  RaisedButton(
                    onPressed: () {},
                    color: Colors.red[100],
                    elevation: 0,
                    child: Row(
                      children: const [
                        Icon(
                          Icons.add,
                          size: 12,
                          color: Colors.red,
                        ),
                        Text(
                          'Add account',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              width: 500,
              height: 200,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 370,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    margin: const EdgeInsets.only(top: 10),
                    child: Card(
                      color: Colors.red,
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(
                              width: double.infinity,
                              child: Text(
                                'Savings - Youth',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    '\$3.74',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text(
                                    '\$',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text('Whitecoode Institud..',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                                Text('1234567890',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17)),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Card(
                        color: Colors.red[100],
                        elevation: 0,
                        child: const Padding(
                          padding: EdgeInsets.all(5),
                          child: Icon(
                            Icons.restart_alt,
                            size: 20,
                            color: Colors.red,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(left: 10),
                        child: Card(
                          color: Colors.red[100],
                          elevation: 0,
                          child: const Padding(
                            padding: EdgeInsets.all(5),
                            child: Icon(
                              color: Colors.red,
                              size: 20,
                              Icons.remove_red_eye,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              // color: Color.fromRGBO(255, 255, 255, 0.3),
              color: const Color.fromRGBO(0, 0, 0, 0.07),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    buildHeader('Features'),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FLoatedButton('Send Money', Icons.swap_horiz,
                                _showBottomSheet),
                            FLoatedButton('Airtime & Data',
                                Icons.wifi_calling_rounded, _showBottomSheet),
                            FLoatedButton('Send Money',
                                Icons.wifi_calling_rounded, _showBottomSheet),
                          ],
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              FLoatedButton('Invest & loan', Icons.swap_horiz,
                                  _showBottomSheet),
                              FLoatedButton('Cards', Icons.local_atm_rounded,
                                  _showBottomSheet),
                              FLoatedButton('Scan & Win', Icons.qr_code_scanner,
                                  _showBottomSheet),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 15),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                FLoatedButton(
                                    'E-Naira',
                                    Icons.donut_small_outlined,
                                    _showBottomSheet),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      onPressed: () {},
                                      backgroundColor: Colors.black,
                                      child: const Icon(
                                        Icons.more_horiz,
                                        size: 30,
                                        color: Colors.white,
                                      ),
                                    ),
                                    const Text('More'),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: buildHeader('Products'),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    padding: const EdgeInsets.only(
                        top: 0, left: 10, right: 10, bottom: 10),
                    child: Card(
                      color: Colors.red[100],
                      elevation: 4,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              'Empty',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40,
                              ),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
