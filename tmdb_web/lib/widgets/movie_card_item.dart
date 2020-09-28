import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class MovieCardItem extends StatefulWidget {
  final double aspectRatio;
  final double height;
  final Widget stackChild;
  final String imageUrl;

  MovieCardItem(
      {this.aspectRatio, this.height, this.stackChild, this.imageUrl});

  @override
  _MovieCardItemState createState() => _MovieCardItemState();
}

class _MovieCardItemState extends State<MovieCardItem> {
  double _height;
  bool _hovered = false;

  @override
  void initState() {
    super.initState();
    _height = widget.height;
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        _hovered = true;
        setState(() {});
      },
      onExit: (event) {
        _hovered = false;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: (_hovered ? _height + 20 : _height),
        child: AspectRatio(
          aspectRatio: widget.aspectRatio ?? 300 / 168,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(widget.imageUrl)),
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              widget.stackChild ?? SizedBox()
            ],
          ),
        ),
      ),
    );
  }
}
