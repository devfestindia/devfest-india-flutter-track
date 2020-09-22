import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  get _firstPart => Row(
        children: [
          SizedBox(width: 20,),
          Image.asset("images/logo.png", height: 20,),

        ],
      );

  get _secondPart => Row(
    children: [
      Icon(Icons.search),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _firstPart,
        _secondPart,
      ],
    );
  }
}
