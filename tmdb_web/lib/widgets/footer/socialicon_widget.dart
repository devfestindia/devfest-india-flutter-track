import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class SocialIconWidget extends StatelessWidget {
  final IconData iconVal;
  const SocialIconWidget({this.iconVal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: InkWell(
        child: Material(
            color: Color(0xff21B9D6),
            shape: CircleBorder(),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(iconVal,
                  color: Colors.white, size: context.isMobile ? 20 : 35),
            )),
        onTap: () {},
      ),
    );
  }
}
