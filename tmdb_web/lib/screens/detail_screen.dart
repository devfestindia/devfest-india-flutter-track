import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/appbar_section.dart';
import 'package:tmdb_web/widgets/cast/cast_section.dart';
import 'package:tmdb_web/widgets/detail/detail_card.dart';
import 'package:tmdb_web/widgets/footer/footerboard_tile.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key key}) : super(key: key);

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
            horizontal: MediaQuery.of(context).size.width * 0.1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 34.0,
              ),

              DetailCard(),

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
