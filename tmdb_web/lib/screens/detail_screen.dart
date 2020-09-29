import 'package:flutter/material.dart';
import 'package:tmdb_web/models/trending_movie.dart';
import 'package:tmdb_web/widgets/appbar_section.dart';
import 'package:tmdb_web/widgets/cast/cast_section.dart';
import 'package:tmdb_web/widgets/detail/detail_card.dart';
import 'package:tmdb_web/widgets/footer/footerboard_tile.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailScreen extends StatefulWidget {
  final TrendingMovie movie;

  const DetailScreen({Key key, @required this.movie}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar: AppBar(
        //AppBar Section
        title: CustomAppbar(),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal:
                context.isMobile ? 0 : MediaQuery.of(context).size.width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: context.isMobile ? 0 : 34.0,
              ),

              DetailCard(movie: widget.movie),

              CastSection(),

              //Footer Section
              FooterBoardTile(),
            ],
          ),
        ),
      ),
    );
  }
}
