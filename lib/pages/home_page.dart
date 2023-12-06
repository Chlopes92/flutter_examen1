import 'package:flutter/material.dart';
import 'package:flutter_examen1/components/video_hero.dart';
import 'package:flutter_examen1/pages/regions_page.dart';
import 'package:flutter_examen1/components/sliding_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      drawer: const MenuDrawer(),
      body: ListView(
        children: <Widget> [
          Container(
        margin: EdgeInsets.zero, // Définir la marge au dessus de la video à zéro
        child: const VideoHero(),
      ),
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  color: Color.fromARGB(255, 114, 166, 255),
                  // height: 550, // Définissez la hauteur souhaitée
                  width: double.infinity,
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    child: Text( 
                      "I. Nos Régions",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      )
                    )
                  ),
                ),
                
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                 child: const Text(
                  "Candy canes icing pastry carrot cake cake. Jelly icing dragée sweet chupa chups cheesecake cotton candy. Marshmallow gummi bears dessert tart soufflé danish croissant. Cheesecake soufflé lollipop jelly-o caramels powder. Jelly-o cake jelly beans lemon drops caramels bonbon chocolate cake. Croissant cotton candy cupcake sesame snaps dessert tart. Cupcake marzipan sugar plum sugar plum fruitcake.",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const RegionPage(title: "Region Page")),
                    );
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(250, 40)),
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.search, color: Colors.blueAccent),
                      SizedBox(width: 5),
                      Text("Rechercher Par Région", 
                        style: TextStyle(
                          color: Colors.black)
                          ),
                    ],
                  ),
                ),

                const SizedBox(height: 30),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: const Text(
                    "Chocolate gummies gingerbread shortbread lollipop danish marshmallow. Marshmallow apple pie carrot cake fruitcake chocolate bar gingerbread halvah jujubes lemon drops. Dessert topping sesame snaps chupa chups oat cake cheesecake caramels. Jelly liquorice marzipan apple pie dessert.",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 10,
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}