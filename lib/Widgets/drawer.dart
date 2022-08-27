import 'package:flutter/material.dart';

import './drawer_menus.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  final _menus = const [
    {'name': 'Transfer', 'routeName': '/transfer'},
    {'name': 'History', 'routeName': '/transaction-history'},
    {'name': 'Deposit', 'routeName': '/deposit'},
  ];

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        height: 500,
        width: double.infinity,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(top: 20),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'One Bank',
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.black,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ...(_menus as List<Map<String, String>>).map((data) {
                      // return print(data);
                      return DrawerMenus(data['name'].toString(),
                          data['routeName'].toString());
                    }),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
