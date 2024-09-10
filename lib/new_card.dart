import 'package:flutter/material.dart';
import 'character_card.dart';
import 'characters_slider.dart';
import 'constants.dart';

class NewsCard extends StatelessWidget {
  final int index; // Specify type for index

  NewsCard(this.index);

  @override
  Widget build(BuildContext context) {
    // Fetching values with null safety
    final imgUrl = latestNews[index]['imgUrl'] ?? 'assets/nametag.png'; // Provide a default image path if null
    final tag = latestNews[index]['tag'] ?? 'No Tag'; // Provide a default tag if null
    final title = latestNews[index]['title'] ?? 'No Title'; // Provide a default title if null

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Image.asset(imgUrl),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            width: MediaQuery.of(context).size.width / 2 - 25,
            child: Column(
              children: <Widget>[
                Text(
                  tag,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                  textAlign: TextAlign.justify,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
