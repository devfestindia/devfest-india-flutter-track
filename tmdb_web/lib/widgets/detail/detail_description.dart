import 'package:flutter/material.dart';

class DetailDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "The Good Doctor (2017)",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Row(
              children: [
                CircleAvatar(backgroundColor: Theme.of(context).primaryColor, minRadius: 25.0, child: Icon(Icons.list, color: Colors.white,),),
                SizedBox(width: 12.0,),
                CircleAvatar(backgroundColor: Theme.of(context).primaryColor, minRadius: 25.0, child: Icon(Icons.favorite, color: Colors.white,),),
                SizedBox(width: 12.0,),
                CircleAvatar(backgroundColor: Theme.of(context).primaryColor, minRadius: 25.0, child: Icon(Icons.bookmark, color: Colors.white,),),
                SizedBox(width: 12.0,),
                CircleAvatar(backgroundColor: Theme.of(context).primaryColor, minRadius: 25.0, child: Icon(Icons.star, color: Colors.white,),),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Text(
              "His mind is a mystery, his methods are a miracle.",
              style: TextStyle(
                  color: Colors.white.withOpacity(0.7),
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                  fontSize: 18.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              "Overview",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Text(
            "A young surgeon with Savant syndrome is recruited into the surgical unit of a prestigious hospital. The question will arise: can a person who doesn't have the ability to relate to people actually save their lives?",
            style: TextStyle(color: Colors.white, fontSize: 16.0),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Text(
              "David Shore",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 4.0),
            child: Text(
              "Creator",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
