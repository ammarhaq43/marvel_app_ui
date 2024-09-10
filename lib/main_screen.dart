import 'package:flutter/material.dart';
import 'package:marvel_app/characters_slider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2 - 100,
            child: Stack(
              children: [
                Positioned.fill(
                    child: Image.asset('assets/background1.png', fit: BoxFit.fill,)
                ),
                Positioned(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      padding: EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: (){},
                              icon:  Icon(Icons.menu,
                                size: 30,
                                color: Colors.white,)
                          ),
                          Image.asset('assets/logo.png', width: 100,
                          ),
                          IconButton(
                              onPressed: (){},
                              icon:  Icon(Icons.search,
                                size: 30,
                                color: Colors.white,)
                          ),
                        ],
                      ),
                    )
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20,),
                       Padding(
                         padding: const EdgeInsets.only(top: 60),
                         child: Text('MARVEL CHARACTERS',
                         style: TextStyle(
                           color: Colors.white,
                           fontSize: 30,
                           fontWeight: FontWeight.bold
                         ),
                         ),
                       ),
                      SizedBox(height: 20,),
                      Text('Get hooked on a hearty helping of heroes and villains from the humble House of ideas!', style: TextStyle(
                        color: Colors.white
                      ),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Container(
                child: Stack(
                  children: [
                    Positioned.fill(
                        child: Image.asset('assets/background2.png', fit: BoxFit.fill,)
                    ),
                    Center(
                      child: CharacterSlider(),
                    )
                  ],
                ),
              )
          )
        ],
      ),
    );
  }
}
