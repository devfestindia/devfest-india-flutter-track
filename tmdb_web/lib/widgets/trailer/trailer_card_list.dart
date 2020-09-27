import 'package:flutter/material.dart';
import 'package:tmdb_web/main.dart';
import 'package:tmdb_web/widgets/movie_card_item.dart';


class TrailerCardList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          itemCount: 15,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, count) => Column(
            children: [
              MovieCardItem(
                imageUrl: "https://www.placecage.com/640/360",
                stackChild: Center(
                    child: SizedBox(
                        height: 40, child: Image.asset("images/play.png"))),
              ),
              SizedBox(height: 10),
              Text(
                faker.person.firstName(),
                style: TextStyle(
                    color: Colors.white, fontSize: 20, fontWeight: FontWeight.w500),
              ),
              Text(
                faker.lorem.words(5).toString(),
                style: TextStyle(color: Colors.white, fontSize: 16,),
              )
            ],
          )),
    );
  }
}
