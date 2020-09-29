import 'package:flutter/material.dart';
import 'package:tmdb_web/widgets/detail/detail_description.dart';
import 'package:tmdb_web/widgets/detail/detail_image.dart';

class DetailCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              "https://image.tmdb.org/t/p/w1920_and_h800_multi_faces/mZjZgY6ObiKtVuKVDrnS9VnuNlE.jpg",
            ),
          ),
        ),
        width: MediaQuery.of(context).size.width,
        child: LayoutBuilder(
          builder: (context, constraints) {
            // View for wide screens if > 700
            return Container(
              color: Colors.blue[800].withOpacity(0.9),
              child: Stack(
                children: [
                  if (constraints.biggest.width > 700)
                    Row(
                      children: [
                        Center(child: DetailImage()),
                        Expanded(child: DetailDescription()),
                      ],
                    ),
                  if (constraints.biggest.width <= 700)
                    Column(
                      children: [
                        DetailImage(),
                        DetailDescription(),
                      ],
                    ),
                ],
              ),
            );
          },
        ));
  }
}
