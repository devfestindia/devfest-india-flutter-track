import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tmdb_web/widgets/footer/socialicon_widget.dart';
import 'package:velocity_x/velocity_x.dart';

class FooterBoardTile extends StatelessWidget {
  const FooterBoardTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.isMobile ? 100 : 200,
      color: Color(0xff032541),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: AssetImage('images/footer_logo.jpg')),
          SocialIconWidget(iconVal: FontAwesomeIcons.github),
          SocialIconWidget(iconVal: FontAwesomeIcons.twitter),
          SocialIconWidget(iconVal: FontAwesomeIcons.linkedin),
          SocialIconWidget(iconVal: FontAwesomeIcons.instagram),
        ],
      ),
    );
  }
}
