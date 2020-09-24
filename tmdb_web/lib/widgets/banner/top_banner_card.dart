import 'package:flutter/material.dart';

class TopBannerSearchCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TopBannerBackground(),
        AspectRatio(
          aspectRatio: 1120 / 360,
          child: Container(
            height: 500,
            alignment: Alignment.bottomCenter,
            color: Colors.blueGrey.withOpacity(0.7),

            child: Center(child: BannerText()),
          ),
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
    return AspectRatio(
        aspectRatio: 1120 / 360,
        child: ColorFiltered(
            colorFilter: new ColorFilter.mode(
                Colors.blue.withOpacity(0.9), BlendMode.color),
            child: Image.network(
              trailerBg,
              fit: BoxFit.cover,
            )));
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
                fontSize: 30,
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
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: 40,),
          TextField(
            textAlign: TextAlign.left,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Search for a name, tv show, person...',
              hintStyle: TextStyle(fontSize: 16, ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(24),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16),
              fillColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
