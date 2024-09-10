import 'package:flutter/material.dart';
import 'character_page.dart';
import 'characters_slider.dart';
import 'constants.dart';
import 'new_card.dart';

class CharacterCard extends StatelessWidget {
  final int index;

  CharacterCard(this.index);

  @override
  Widget build(BuildContext context) {
    // Fetching values with null safety
    final imgUrl = characterList[index]['imgUrl'] ?? ''; // Use an empty string if null
    final heroName = characterList[index]['hero_name'] ?? 'Unknown Hero'; // Provide a default value
    final realName = characterList[index]['real_name'] ?? 'Unknown Name'; // Provide a default value

    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CharacterPage(index)));
      },
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(40),
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.black,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Flexible(
                flex: 5,
                child: Container(
                  width: MediaQuery.of(context).size.width / 2 - 40,
                  child: Hero(
                    tag: imgUrl,
                    child: Image.asset(
                      imgUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                height: 5,
                width: MediaQuery.of(context).size.width / 2 - 40,
                color: Colors.red,
              ),
              Flexible(
                flex: 4,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        heroName.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        realName.toUpperCase(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
