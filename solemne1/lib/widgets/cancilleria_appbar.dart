import 'package:flutter/material.dart';

class CancilleriaAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CancilleriaAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      title: Row(
        children: [
          SizedBox(
            width: 80,
            height: 80,
            child: Image.asset(
              'assets/images/logochile2.jpg',
              fit: BoxFit.contain,
            ),
          ),
          const SizedBox(width: 14),
          const Expanded(
            child: Text(
              "Chile en el Exterior",
              style: TextStyle(
                color: Color.fromARGB(221, 73, 72, 72),
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 12.0),
          child: Icon(Icons.menu, color: Colors.black87),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
