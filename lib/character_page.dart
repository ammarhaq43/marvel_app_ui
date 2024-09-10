import 'package:flutter/material.dart';
import 'constants.dart';
import 'new_card.dart';

class CharacterPage extends StatelessWidget {
  final int index; // Specify type for index

  CharacterPage(this.index);

  @override
  Widget build(BuildContext context) {
    // Safely access nullable values with null-awareness
    final imgUrl = characterList[index]['imgUrl'] ?? 'assets/default_image.png'; // Default image if null
    final realName = characterList[index]['real_name']?.toUpperCase() ?? 'Unknown Real Name'; // Default if null
    final heroName = characterList[index]['hero_name']?.toUpperCase() ?? 'Unknown Hero Name'; // Default if null
    final description = characterList[index]['description'] ?? 'No description available.'; // Default if null

    return Scaffold(
      backgroundColor: Color(0xff0D0C11),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  child: Hero(
                    tag: imgUrl,
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      size: 30,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: 10,
                  left: 20,
                  child: Image.asset('assets/nametag.png'),
                ),
                Positioned(
                  bottom: 25,
                  left: 20,
                  child: Text(
                    realName, // Using the safely accessed realName
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    heroName, // Using the safely accessed heroName
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    description, // Using the safely accessed description
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                  // Assuming NewsCard is a defined widget elsewhere in your code
                  NewsCard(0),
                  NewsCard(1),
                  NewsCard(2),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
