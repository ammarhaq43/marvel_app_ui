import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:marvel_app/character_page.dart';
import 'constants.dart';

class CharacterSlider extends StatefulWidget {
  @override
  _CharacterSliderState createState() => _CharacterSliderState();
}

class _CharacterSliderState extends State<CharacterSlider> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: characterList.length,
      itemBuilder: (context, index, realIdx) => CharacterCard(index),
      options: CarouselOptions(
        viewportFraction: 0.6,
        height: 340,
        enlargeCenterPage: true,
      ),
    );
  }
}

class CharacterCard extends StatelessWidget {
  final int index;

  CharacterCard(this.index);

  @override
  Widget build(BuildContext context) {
    final imgUrl = characterList[index]['imgUrl'] ?? '';
    final heroName = characterList[index]['hero_name'] ?? 'Unknown Hero';
    final realName = characterList[index]['real_name'] ?? 'Unknown Name';

    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => CharacterPage(index)));
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
