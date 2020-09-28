import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class TopBannerSearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TopBannerBackground(),
        Container(
          height: context.isMobile ? 220 : 400,
          alignment: Alignment.bottomCenter,
          color: Colors.blueGrey.shade900.withOpacity(0.5),
          child: Center(child: BannerText()),
        ),
      ],
    );
  }
}

class TopBannerBackground extends StatelessWidget {
  final String trailerBg =
      "https://img.wallpapersafari.com/desktop/1920/1080/5/53/yIQUZE.jpg";

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      child: ColorFiltered(
          colorFilter: new ColorFilter.mode(
              Colors.blue.withOpacity(0.9), BlendMode.color),
          child: CachedNetworkImage(
            imageUrl: trailerBg,
            width: MediaQuery.of(context).size.width,
            height: context.isMobile ? 220 : 400,
            fit: BoxFit.cover,
          )),
    );
  }
}

class BannerText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Welcome.',
            style: TextStyle(
                color: Colors.white,
                fontSize: context.isMobile ? 18 : 30,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                    color: Colors.black,
                  )
                ]),
          ),
          Text(
            'Millions of movies, TV shows and people to discover. Explore now.',
            style: TextStyle(
                color: Colors.white,
                fontSize: context.isMobile ? 16 : 25,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: context.isMobile ? 20 : 40,
          ),
          TextField(
            textAlign: TextAlign.left,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search for a name, tv show, person...',
              hintStyle: TextStyle(
                fontSize: 14,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(context.isMobile ? 8 : 16),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
