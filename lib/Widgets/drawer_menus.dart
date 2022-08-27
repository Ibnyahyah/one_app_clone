import 'package:flutter/material.dart';

class DrawerMenus extends StatelessWidget {
  final String text;
  final String routeName;

  const DrawerMenus(this.text, this.routeName);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          child: ListTile(
            leading: Icon(Icons.abc),
            title: Text(
              text,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            onTap: () {
              Navigator.of(context).pushNamed(routeName);
            },
          ),
        ),
        const Divider(),
      ],
    );
  }
}
