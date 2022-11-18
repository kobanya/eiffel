import 'package:flutter/material.dart';
import 'package:menu/CipoMeret.dart';
import 'package:menu/LeletariSzam.dart';
import 'package:menu/xxx.dart';
import 'package:menu/TargyiEszkoz.dart';
import 'package:menu/Tisztitoszer.dart';
import 'package:menu/OffLineJelmezkereso.dart';



void main() => runApp(const MyApp());


class MyApp extends StatelessWidget {

  const MyApp({super.key});

  static const appTitle = 'Eiffel Műhelyház';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: const Text('Jelmezkereső'),
        backgroundColor: Colors.lightGreen,
      ),

      body: const Center(
        child:
        CircleAvatar(
            backgroundImage: AssetImage('assets/eiffel.png'),
            radius: 50.0
        ),
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll

        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.lightGreen,
              ),
              child:  Text('Eiffel könyvjelzők',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 2.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 19.0,
                ),
              ),
            ),
            // Könyvjelző első linkjének megadása
            ListTile(
              leading:  const Icon(Icons.accessibility_new_sharp,
                  color: Colors.black,size: 30.0),
              title: const Text('Jelmezkereső',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 2.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),

              onTap: () {
                Navigator.pop(context);
              },
            ),
            // A könyvjelző második linkjánek megadása
            ListTile(
              leading:  Icon(Icons.content_cut_sharp,
                  color: Colors.black),
              title: const Text('Cipőméret',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {

                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,new MaterialPageRoute(builder: (context) => CipoMeret()));
              },
            ),
            // A könyvjelző harmadik linkjének megadása
            ListTile(
              leading:  const Icon(Icons.onetwothree_outlined,
                  color: Colors.black,size: 30.0),
              title: const Text('Leltári szám kereső',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,new MaterialPageRoute(builder: (context) => LeltariSzam()));
              },
            ),
            // Könyvjelző a negyedik  linkhez
            ListTile(
              leading:  const Icon(Icons.soap,
                  color: Colors.black),
              title: const Text('Tisztítószer készlet',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,new MaterialPageRoute(builder: (context) => Tisztitoszer()));
              },
            ),
            ListTile(
              leading:  const Icon(Icons.iron,
                  color: Colors.black),
              title: const Text('Tárgyieszköz leltár',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
                Navigator.push(context,new MaterialPageRoute(builder: (context) => TargyiEszkoz()));
              },
            ),
// elválasztó vonal beillesztése
            const Divider(
                height: 30.0,
                color: Colors.lightGreen
            ),
            ListTile(
              leading:  const Icon(Icons.theater_comedy,
                  color: Colors.black,size: 40.0),
              title: const Text('Szcenáriumok',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            const Divider(
                height: 30.0,
                color: Colors.lightGreen
            ),
            ListTile(
              leading:  const Icon(Icons.bookmarks_outlined,
                  color: Colors.black),

              title: const Text('Offline jelmezlista',
                style: TextStyle(
                  color: Colors.black54,
                  letterSpacing: 1.0,
                  fontWeight:  FontWeight.bold,
                  fontSize: 17.0,
                ),

              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,new MaterialPageRoute(builder: (context) => ReadJson()));
                // Update the state of the app
                // ...
                // Then close the drawer
                //Navigator.pop(context,new MaterialPageRoute(builder: builder:(context)=> ));
              },
            ),
          ],
        ),
      ),
    );
  }


}
