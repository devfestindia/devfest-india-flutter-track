import 'package:flutter/material.dart';

class LeaderHeaderTile extends StatelessWidget {
  const LeaderHeaderTile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(top: 8.0),
        child: Text(
          'Leaderboard',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: EditTile(
          editText: 'All Time Edits',
          primaryColor: 0xFFdf4f65,
          secondaryColor: 0xFFfcbd6f),
      subtitle: EditTile(
          editText: 'Edits This Week',
          primaryColor: 0xFF2fd9ad,
          secondaryColor: 0xFFb3fbcc),
    );
  }
}

class EditTile extends StatefulWidget {
  final String editText;
  final int primaryColor;
  final int secondaryColor;
  const EditTile({this.editText, this.primaryColor, this.secondaryColor});

  @override
  _EditTileState createState() => _EditTileState();
}

class _EditTileState extends State<EditTile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HeaderContainerTile(
            primaryColor: widget.primaryColor,
            secondaryColor: widget.secondaryColor),
        SizedBox(
          width: 10.0,
        ),
        Text(
          widget.editText,
          style: TextStyle(
            fontSize: 12.0,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

class HeaderContainerTile extends StatefulWidget {
  final int primaryColor;
  final int secondaryColor;

  const HeaderContainerTile({this.primaryColor, this.secondaryColor});

  @override
  _HeaderContainerTileState createState() => _HeaderContainerTileState();
}

class _HeaderContainerTileState extends State<HeaderContainerTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: LinearGradient(
          colors: [
            Color(widget.primaryColor),
            Color(widget.secondaryColor),
          ],
          begin: Alignment.centerRight,
          end: Alignment(-1.0, -1.0),
        ),
      ),
    );
  }
}
