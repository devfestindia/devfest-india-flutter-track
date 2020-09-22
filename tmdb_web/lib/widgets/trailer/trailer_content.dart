import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/trailer/trailer_card_list.dart';
class TrailerContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(36.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Latest Trailers',
            style: TextStyle(
              fontSize: 24.0,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          TrailerCardList(),
        ],
      ),
    );
  }
}