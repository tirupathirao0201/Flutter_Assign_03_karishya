import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;
  const MyAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF6A234F),
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios)),
      title: Text(
        title!,
        style: const TextStyle(
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500,
          fontSize: 22,
        ),
      ),
      actions: <Widget>[
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications,
              size: 30,
            )),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              size: 30,
            ))
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 56);
}
