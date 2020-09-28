import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieCardItem extends StatelessWidget {
  final double aspectRatio;
  final double height;
  final Widget stackChild;
  final String imageUrl;

  MovieCardItem(
      {this.aspectRatio, this.height, this.stackChild, this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 168,
      child: AspectRatio(
        aspectRatio: aspectRatio ?? 300 / 168,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: CachedNetworkImageProvider(imageUrl)),
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
            ),
            stackChild ?? SizedBox()
          ],
        ),
      ),
    );
  }
}
