import 'package:flutter/material.dart';

class smallSubText extends StatelessWidget {
  final String text;

  const smallSubText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: Colors.grey,
        fontSize: 10,
      ),
    );
  }
}
