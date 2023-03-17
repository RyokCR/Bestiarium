import 'dart:ui';

import 'package:bestiarium/db/admin/db_manager.dart';
import 'package:bestiarium/model/small_creature.dart';
import 'package:flutter/material.dart';

import 'navigation.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'utils/network.dart';
import 'package:dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

//await download('https://github.com/RyokCR/RyokCR/raw/main/PicsArt_03-06-03.11.38.jpg');

  await Hive.initFlutter();

  Hive.registerAdapter(SmallCreatureAdapter());
  await Hive.openBox<SmallCreature>('small_creatures');


  addSmallCreature(
      'Jer-jer',
      'Plumifera',
      '15 cm',
      'Omnivorous',
      'Naturally curious, these creatures often come close to inspect any unusual beings or objects that enter their habitat. If startled however, they will quickly jump away with extreme speed. Catching one is no easy task. Jer-jers gather in large flocks, and are extremely social. They will perform highly synchronized flight patterns in flocks in order to confuse any perceived predators.'
          'Jer-Jers are monogamous, and construct large basket-like nests by weaving vegetation together. Call is similar to a rapid chattering, a distinctive jer-jer-jer that gives them their common name.\n\n'
          'They are well-known and respected by spirits and incarnates alike, as they are drawn to large sources of energy, which facilitates their location. They will often gather around powerful spirits as well.',
      'assets/images/gerbobird.png',
    0,
    'temporal');


  addSmallCreature(
      'Bounder',
      'Amphibian',
      '1.50m tall, 2.50m long',
      'Insectivorous',
      'Docile creatures from the marshlands. They are commonly used as mounts by intelligent inhabitants of the area.'
          ' Only juveniles are chosen for this purpose, and older individuals are released back into the wild.'
      '\n\n'
          'These creatures undergo a life-long metamorphosis. They are born into an aquatic environment, and live completely'
          ' submerged until they grow legs and reach maturity. Their tails and gills shrink as they grow, the oldest specimens'
          ' nearly lacking them, while also being more heavy and muscular. At this point, they are fit for an almost completely'
          ' terrestrial life. However, they return to the rivers and ponds during breeding season to lay their eggs',
      'assets/images/bounder.png',
    0,
    'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Bounder.jpg'
  );
  addSmallCreature(
      'Abyssecter',
      'Thalassus',
      '10-18m',
      'Carnivourous',
      'Apex predators of Leviathan\'s Trench. They ambush prey from the dark, luring them in with the bioluminescent spots on their'
          ' shell and inside their mouths, and grabbing onto them with their jaws and mandibles. Once Abyssecter has feasted on a sufficiently'
          ' large creature, it will burrow through the seafloor and grow, leaving segments of it behind before it leaves once more. The segments'
          ' grow into fully-fledged specimens in a matter of months.'
          '\n\n'
          'They are blind, for they live in an environment completely devoid of light. However, they sense prey through signals received by their'
          ' antennae.Their body is covered in  rows of harpoon-like bristles, which contain powerful toxins. Many fin-like appendages aid them in'
          ' their locomotion, which reaches considerable speed.'
      ,
      'assets/images/abyssecter.png',
    0,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Abyssecter.jpg'

  );



  addSmallCreature(
      'Krokoskopas',
      'Saurian',
      '7 m',
      'Carnivourous',
      'Successful, large ambush predators of the marshlands. They are able to stay completely still for hours,'
          ' camouflaged by the algae that grows on their backs and their spotted hide. Once a prey creature comes'
          ' close enough, Krokoskopas moves surprisingly fast and bites down with great force on any limb within its reach.'

      '\n\nTheir teeth, fused together in a broad, sharp edge, have evolved to cut and amputate rather than grab. The wounds'
          ' inflicted by the terrible bite usually cause prey to bleed out in a matter of minutes. Their rigid, paddle-shaped'
          ' tail is also a force to be reckoned with, and the beast will swing it like a mace to strike anything that attempts to grab or attack it from behind.'

      '\n\nThe eight eyes of Krokoskopas are highly sensitive to movement, and cover a broad range of sight around their heads. They usually keep half their snout'
          ' submerged underwater, and the rest of their eyes at the surface to watch the totality of their surroundings.'
      ,
      'assets/images/krokoskopas.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Krokoskopas.jpg'

  );

  addSmallCreature(
      'Kukkuru',
      'Amphibian',
      '15 cm',
      'Insectivorous',
      'Small, but heavy amphibians that thrive in swamps and jungles, appearing in many variations of bright'
          ' coloring with elegant dark spots. Their horns grow throughout their whole lives, and their backs are'
          ' protected by hard elytra, which conceal clear, but strong wings that allow Kukkuru to hunt while airborne and patrol their domain.'

      '\n\nKukkuru skin, always moist, produces a potent, paralyzing neurotoxin, making them quite dangerous to handle without protection. They'
          ' obtain these toxins from the various poisonous insects present in their diet. Hunter tribes of the marshlands are said to harvest and'
          ' carve Kukkuru horns into a sharp splinter shape, thus crafting deadly blow-dart weapons.'

  '\n\nKukkuru are usually unafraid of other approaching creatures, and allow them to get close without fleeing. There are no known predators able'
          ' to withstand their poison upon consumption.'
      ,
      'assets/images/kukkuru.png',
      2,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Kukkuru.jpg'

  );

  addSmallCreature(
      'Gypsiena',
      'Plumifera',
      '1.8 m - 4 m wingspan',
      'Scavenging, carnivorous',
      'Very territorial. These large carrion-eaters possess stomach'
          ' acids capable of dissolving nearly any substance, and they'
          ' will regurgitate these fluids in order to use them as a weapon'
          ' against any competitors they encounter throughout their domains.'
          ' Gypsiena devour carcasses, bone and any organic matter, but are'
          ' also highly opportunistic. They will attack smaller, weaker animals'
          ' or attempt to scare off other large predators in order to take over the remains of a kill.'

      '\n\nGypsiena roost in crevices of the mountains surrounding the Badlands,'
          ' and are capable of surviving without drinking barely any water. They'
          ' obtain all moisture they need from ingested matter.'
          ' to withstand their poison upon consumption.'
      ,
      'assets/images/gypsiena.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Gypsiena.jpg'

  );

  runApp(NavApp());
}
/*
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,

      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
*/