

import 'package:bestiarium/domain/services/db/admin/db_manager.dart';

import 'package:bestiarium/domain/entities/coordinate.dart';

addLargeCreatures(){
  addSmallCreature(
      'Abyssecter',
      'Thalassus',
      '10-18m',
      'Carnivorous',
      'Apex predators of Leviathan\'s Trench. They ambush prey from the dark, luring them in with the bioluminescent spots on their'
          ' shell and inside their mouths, and grabbing onto them with their jaws and mandibles. Once Abyssecter has feasted on a sufficiently'
          ' large creature, it will burrow through the seafloor and grow, leaving segments of it behind before it leaves once more. The segments'
          ' grow into fully-fledged specimens in a matter of months.'
          '\n\n'
          'They are blind, for they live in an environment completely devoid of light. However, they sense prey through signals received by their'
          ' antennae.Their body is covered in  rows of harpoon-like bristles, which contain powerful toxins. Many fin-like appendages aid them in'
          ' their locomotion, which reaches considerable speed.'
      ,
      'assets/images/icons/large_creatures/abyssecter.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Abyssecter.jpg',
      'normal',
      'fire',
      'Common',
      'large',
    habitat: [Coordinate(x: (.936 * 2 - 1).toString(), y: (.500 * 2 - 1).toString())]// x: '.872', y: '.548'//.436 * 2 - 1, .274 * 2 - 1

  );



  addSmallCreature(
      'Krokoskopas',
      'Saurian',
      '7 m',
      'Carnivorous',
      'Successful, large ambush predators of the marshlands. They are able to stay completely still for hours,'
          ' camouflaged by the algae that grows on their backs and their spotted hide. Once a prey creature comes'
          ' close enough, Krokoskopas moves surprisingly fast and bites down with great force on any limb within its reach.'

          '\n\nTheir teeth, fused together in a broad, sharp edge, have evolved to cut and amputate rather than grab. The wounds'
          ' inflicted by the terrible bite usually cause prey to bleed out in a matter of minutes. Their rigid, paddle-shaped'
          ' tail is also a force to be reckoned with, and the beast will swing it like a mace to strike anything that attempts to grab or attack it from behind.'

          '\n\nThe eight eyes of Krokoskopas are highly sensitive to movement, and cover a broad range of sight around their heads. They usually keep half their snout'
          ' submerged underwater, and the rest of their eyes at the surface to watch the totality of their surroundings.'
      ,
      'assets/images/icons/large_creatures/krokoskopas.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Krokoskopas.jpg',
      'normal',
      'fire',
      'Common',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.726 * 2 - 1).toString(), y: (.400 * 2 - 1).toString())]
  );

  addSmallCreature(
      'Cytuatara',
      'Thalassus',
      '18 m ',
      'Carnivorous, Scavenging',
      'Enormous serpentine creatures that dwell at the bottom of the deepest swamps'
          ' of the Geko Wetlands. They are apex predators of this environment, but are'
          ' also highly opportunistic, and devour the bodies of any life forms that become'
          ' trapped in the mire, sinking to the bottom where they dwell. The variety of'
          ' sensory organs present throughout their bodies -able to perceive light, heat'
          ', vibrations or electrical impulses- allow them to immediately detect anything'
          ' that enters the territory they occupy.'

          '\n\nCytuatara are well adapted to withstand the toxins and noxious gas naturally present'
          ' in their habitat. The feathery appendages that protrude from their bodies are actually'
          ' external gills, which allow them to remain submerged for most of their lifetime, as'
          ' they patiently wait for the muddy waters to trap their prey before attacking.'

          '\n\nSaliva, and all other secretions that Cytuatara produce are highly toxic.'
          ' Its mere presence poisons the water they inhabit, turning it into a deadly'
          ' trap for any non-adapted creatures. Like many other scavengers of Onyria,'
          ' they are also able to use their highly corrosive stomach acid as a weapon.'
      ,
      'assets/images/icons/large_creatures/cytuatara.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Cytuatara.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.726 * 2 - 1).toString(), y: (.400 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Niluuq',
      'Arthropoda',
      '2.3 m tall, 8 m long',
      'Herbivorous',
      'Large creatures of the deepest areas of Onyrian forests. Their bizarre'
          ' appearance has earned them an undeserved reputation of being evil,'
          ' twisted creatures. Many local legends describe Niluuq as man-eaters,'
          ' originally having four legs and gaining an extra pair every time they'
          ' devour a victim. In reality they are herbivores, feeding mostly on'
          ' forest litter, decaying wood and fungal matter.'

          '\n\nAlthough they seem blind at a first glance, their eyes are positioned'
          ' at the center of their mobile, hand-like antennae, which are also very'
          ' sensitive to chemical signals. As a defensive mechanism, they are able'
          ' to curl their armored bodies around their head section while secreting'
          ' foul-smelling, irritating toxins. They can also expertly maneuver the'
          ' full length of their bodies, and will guard the more vulnerable head while'
          ' throwing kicks or shoving using their last pairs of legs.'
      ,
      'assets/images/icons/large_creatures/niluuq.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Niluuq.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.570 * 2 - 1).toString(), y: (.670 * 2 - 1).toString()),
        Coordinate(x: (.300 * 2 - 1).toString(), y: (.610 * 2 - 1).toString()),
        Coordinate(x: (.690 * 2 - 1).toString(), y: (.350 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Barambuffel',
      'Warm-blooded beast',
      '2m tall',
      'Herbivorous',
      'Barambuffel live together in small groups, in forests of the northern'
          ' mountains of Onyria. During a certain season, all young males will'
          ' leave the group and search for other communities, establishing themselves'
          ' in the new community after proving their strength in ritual battles.'

          '\n\nBarambuffel are strictly monogamous. They are known for being gentle with creatures'
          ' that are smaller or weaker than they are, and defending them from predator attacks.'
          ' Despite this, they will brutally attack anything that they perceive as a threat to their group or habitat.'

          '\n\nThey survive solely on eating plants and fruit, and are able to weave certain plants together in order to build'
          ' some rudimentary tools and large shelter structures to protect their nests from harsh weather conditions.'
      ,
      'assets/images/icons/large_creatures/barambuffel.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Barambuffel.jpg',
      'normal',
      'fire',
      'Common',
      'large',
      habitat: [Coordinate(x: (.690 * 2 - 1).toString(), y: (.320 * 2 - 1).toString())]
  );

  addSmallCreature(
      'Kaulaula',
      'Plumifera',
      '1.20 m tall, 1.80 m long',
      'Carnivorous',
      'Strange, predatory plumiferans with a unique hunting tactic.'
          ' They leap into the air with their powerful legs, and skewer'
          ' prey below with their sharp, spear-like hooves. The strips'
          ' that grow from their back produce an eerie whistling sound '
          'as they fall, which mimics the sound of the wind blowing through '
          'the mountains. Their pointed hooves also allow them to traverse the snow-filled cliffs they inhabit.'

          '\n\nTheir dense plumage isolates and protects them from the cold, and their flattened,'
          ' broad faces aid their excellent hearing. Kaulaula are capable even of successfully '
          'killing prey that moves under the snow, locating the exact source of the sounds they produce'
          ', and thrusting their long legs into the ground like harpoons.'
      ,
      'assets/images/icons/large_creatures/kaulaula.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Kaulaula.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.290 * 2 - 1).toString(), y: (.480 * 2 - 1).toString()),
        Coordinate(x: (.726 * 2 - 1).toString(), y: (.400 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Wryguana',
      'Saurian',
      '2.30 m long',
      'Carnivorous',
      'Jungle-dwelling creatures with oddly shaped and extremely flexible bodies.'
          ' They are able to dislocate any joint in order to pass through small openings,'
          ' such as the burrows of smaller prey. They use their highly precise, elongated '
          'forelimbs to reach into even more inaccessible pockets, and snatch whatever hides within.'

          '\n\nWhen hunting for large prey, they stalk and ambush, quickly wrapping their flexible bodies'
          ' and tails around the target, and squeezing until it suffocates. They are able to unhinge their'
          ' jaws in order to swallow large objects whole. Their sharp teeth flatten against their gums in'
          ' order to let ingested matter pass through, but deploy like hooks to grab anything that tries to escape.'

          '\n\nGekkoku are also expert climbers. Their agility allows them to move quickly through dense forests,'
          ' and their specially adapted pupils provide them with excellent night vision. The scaly protrusions'
          ' on their back mimic vegetation, allowing them to blend in successfully with their surroundings.'
          ' They are also able to deploy these protrusions in a threatening display to ward off anything they'
          ' perceive as menacing.'
      ,
      'assets/images/icons/large_creatures/wryguana.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Wryguana.jpg',
      'normal',
      'fire',
      'Common',
      'large',
      habitat: [Coordinate(x: (.310 * 2 - 1).toString(), y: (.620 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Nessnaila',
      'Hydran',
      '5m tall, 10m long',
      'Carnivorous',
      'Rare sea creatures with very slow growth, but extremely long lifespans. They are most'
          ' vulnerable in the early stages of their life, in which their size is small and they'
          ' may be eaten by larger creatures. However, as they grow, the toxins they secrete gradually'
          ' become more dangerous. Their tentacles, capable of delivering a painful sting to anything that'
          ' comes into contact, become a lethal weapon once Nessnaila reaches considerable size. The strands'
          ' become vastly long and difficult to detect, dangling below as the body drifts along the surface.'

          '\n\nAny life form that becomes entangled in an adult Nessnaila\'s tentacles will be almost instantly'
          'paralyzed. It will then tightly wrap its appendages around its prey, withdraw them, and retreat into its'
          ' shell. The beast then distends its innards completely over the captured animal, and digests the body.'

          '\n\nEach single specimen contains both sexes in its body, being able to reproduce asexually, Their eggs –produced'
          ' very rarely and enveloped in a highly toxic, floating protective structure- are carried far away by oceanic'
          ' currents.'

      ,
      'assets/images/icons/large_creatures/nessnaila.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Nessnaila.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.910 * 2 - 1).toString(), y: (.420 * 2 - 1).toString()),
        Coordinate(x: (.040 * 2 - 1).toString(), y: (.520 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Drak\'sakara',
      'Arthropoda',
      '3 m tall, 6 m long',
      'Carnivorous',
      'Large predatory beasts from the Undergrove. They live and hunt alone, gathering only during'
          ' mating seasons –in which many adult specimens lose their lives, either in ritual fights,'
          ' or devoured while mating- and then part ways once again. They are extremely territorial and aggressive.'

          '\n\nTheir massive scythe-like forelimbs are periodically sharpened by the creature, which grinds'
          ' them against each other, or any nearby suitable stones. This results in deadly natural weapons'
          ' capable of slicing through armor and flesh with ease. Accustomed to a perpetually dark and cool'
          ' habitat, these creatures only flee from fire. They are, however, drawn to small sources of light'
          ' and heat, such as lanterns carried by travelers.'

      ,
      'assets/images/icons/large_creatures/drak\'sakara.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Drak\'sakara.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.690 * 2 - 1).toString(), y: (.350 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Giret\'hara',
      'Warm-blooded beast',
      ' 7 m tall',
      'Frugivorous',
      'Odd -some would say, ridiculous- creatures that thrive near the Green Serpent\'s oasis, in the Badlands.'
          ' Their long necks are an adaptation that allows the beasts to eat Fleshfruit directly from the very'
          ' tall trees that produce them. Their sharp teeth and spiked tongue allow them to break through the'
          ' thick skin of the fruit, and consume the meat-like pulp. The seeds pass through Giret\'hara\'s'
          ' digestive tract unharmed, making them the most important agents in the propagation of said trees.'

          '\n\nThey are able to move at surprisingly high speeds despite their appearance, with very wide strides'
          ' and extra traction provided by their claws. If threatened, they will swing their necks with force'
          ' or kick to defend themselves. Male Giret´hara behave quite territorially and will often attack any'
          ' approaching creatures.'
      ,
      'assets/images/icons/large_creatures/giret\'hara.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Giret\'hara.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.790 * 2 - 1).toString(), y: (.620 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Aegisquama',
      'Saurian',
      '2 m tall, 3.5 m long',
      'Carnivorous',
      'Slow moving, but strong desert lizards. Their tough scaly armor, which is the color of bronze, protects them from'
          ' most attacks that come from behind or above. Their underside, however, is vulnerable. Aegisquama curl up into'
          ' a defensive ball whenever threatened, and then unroll with explosive force as a counterattack.'

      '\n\nThey hunt by throwing themselves full speed into their prey, curling up into a ball and letting themselves'
          ' roll down from dunes or high rocks. This kind of movement compensates for its lack of speed on foot. The '
          'surprise attack rarely kills the target, but Aegisquama`s sharp claws and teeth finish the job once the creature'
          ' is thrown off balance by the first strike. Their saliva is toxic, making bites dealt by these creatures heal with'
          ' extreme difficulty.'
      ,
      'assets/images/icons/large_creatures/aegisquama.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Aegisquama.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.790 * 2 - 1).toString(), y: (.570 * 2 - 1).toString()),
        Coordinate(x: (.700 * 2 - 1).toString(), y: (.660 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Cornukapra',
      'Warm-blooded beast',
      '2. 3 m tall, 3.5 m wingspan',
      'Herbivorous',
      'Large and powerful, Cornukapra are among the most formidable mountain creatures in Onyria. They are highly territorial,'
          ' and will attempt to shove any invading creatures off the cliffs they patrol. Their wings, although'
          ' sturdy, are incapable of supporting the weight of their bodies for very long. Their hooves, however, are highly'
          ' specialized in climbing, each toe being capable of independent movement. Cornukapra traverse the unforgiving '
          'mountainous terrain with a combination of precise jumping and gliding, and often climb almost vertical stone'
          ' walls to lick mineral deposits near the high mountain springs.'

      '\n\nMales fight fiercely to defend their territories, in spectacular aerial showdowns. Unfortunately, it is not'
          ' uncommon for the loser to fall to its death when injured and defeated.'
      ,
      'assets/images/icons/large_creatures/cornukapra.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Cornukapra.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.380 * 2 - 1).toString(), y: (.340 * 2 - 1).toString()),
        Coordinate(x: (.160 * 2 - 1).toString(), y: (.460 * 2 - 1).toString()),
        Coordinate(x: (.160 * 2 - 1).toString(), y: (.600 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Mephitax',
      'Warm-blooded beast',
      '1.20 m tall, 2.5 m long',
      'Carnivorous',
      'Vicious and highly adaptable predatory creatures. They are found in almost any type of terrestrial habitat, and are'
          ' able to climb and swim well.'

      '\n\nMephitax hunt alone, and usually attack creatures far larger than they are. They use their long, bushy tails '
          'for protection while doing this, cushioning heavy strikes or bites that come from above. If the larger creature '
          'bites the tail decoy, Mephitax will quickly attack the throat while it is distracted.'

  '\n\nThey have also been observed displaying several other hunting tactics, such as playing dead while secreting a foul'
          ' smelling substance from the base of their tails to lure in and ambush scavengers.'
      ,
      'assets/images/icons/large_creatures/mephitax.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Mephitax.jpg',
      'normal',
      'fire',
      'Common',
      'large',
      habitat: [Coordinate(x: (.500 * 2 - 1).toString(), y: (.670 * 2 - 1).toString()),
        Coordinate(x: (.300 * 2 - 1).toString(), y: (.610 * 2 - 1).toString()),
        Coordinate(x: (.350 * 2 - 1).toString(), y: (.510 * 2 - 1).toString()),
        Coordinate(x: (.350 * 2 - 1).toString(), y: (.410 * 2 - 1).toString())]

  );



  addSmallCreature(
      'Heliursa',
      'Warm-blooded beast',
      '3.5 m',
      'Mineral',
      'Large, intelligent beasts that thrive in the caves of the Flaming Steppe region. Due to the scarceness of plants'
          ' or other animals in the ash-covered land they inhabit, they have evolved to feed on ore and stone, with the '
          'help of symbiotic bacteria contained in their digestive tracts. Heliursa jaws can exert incredible force, and'
          ' their arms are also powerful enough to pulverize rocks.'

      '\n\nTheir body temperature is far higher than that of any other Onyrian creature. They have an extremely long life'
          ' expectancy, but also reproduce at a very slow rate. Unlike most warm blooded beasts, Heliursa lay eggs.'

      '\n\nWhile incubating their offspring, they will roll into a ball shape and enter a hibernation state with the egg'
          ' safely held at the center of their bodies. While in this state, their temperature decreases and they become '
          'inactive until the egg hatches. Heliursa are very protective of their young, and will behave extremely aggresively '
          'if protecting a cub.'
      ,
      'assets/images/icons/large_creatures/heliursa.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Heliursa.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.350 * 2 - 1).toString(), y: (.350 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Adamantaile',
      'Arthropoda',
      '8 m long, 6 m wingspan',
      'Herbivorous',
      'Large arthropodans with extreme resistance and longevity. While not immediately aggresive, they are treated with'
          ' respect due to their considerable size and powerful bite.'

      '\n\nAdamantaile feed on plant matter, moss and lichens, which they scrape off the surface of rocks and trees with'
          ' their beak-shaped mouths. They require very high levels of moisture, or large sources of water to maintain'
          ' their bodily functions. If not able to remain hydrated, Adamantaile will coil their bodies and crystalize into'
          ' an extremely tough coccoon shape, becoming inactive.'

  '\n\nThere is no known way to destroy a crystalized Adamantaile- they are able to withstand extreme heat, cold,'
          ' lack of oxygen and all forms of physical damage. They may remain in this state for hundreds of years.'
          ' The creature, however, may be immediately revived at any time simply by being exposed to water.'
      ,
      'assets/images/icons/large_creatures/adamantaile.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Adamantaile.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.750 * 2 - 1).toString(), y: (.400 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Halskárabos',
      'Arthropoda',
      '8 m tall',
      'Scavenging',
      'One of the most recognizable creatures from the Swaying Plains\' Forest of Bone.'

  '\n\nThese large arthropodans feed on decaying organic matter and chew on bones, extracting some necessary minerals'
          ' from them. Their thick exoskeleton protects their whole bodies from predator attacks, making them quite'
          ' difficult to take down. They possess small vestigial wings under their elytra, which they use to produce '
          'high pitched screeching sounds to communicate with each other.'

  '\n\nMale Halskárabos will fight in order to mate with females, but will rarely kill each other during these events.'
          ' After laying eggs, females will place them in high, hard-to-reach places, attaching them to rocks or trees'
          ' using a sticky substance produced by glands near the mouth.'
      ,
      'assets/images/icons/large_creatures/halskárabos.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Halskárabos.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.600 * 2 - 1).toString(), y: (.670 * 2 - 1).toString())]
  );

  addSmallCreature(
      'Myrmeleuka',
      'Arthropoda',
      '3 m long, 1.5 m tall',
      'Carnivorous',
      'Highly efficient predators from the Forest of Bone. '

      '\n\nTheir long scissor-shaped tails aid them in overpowering prey, and constructing traps. Although they are '
          'capable of chasing down other creatures, Myrmeleuka construct a number of pit traps in a circular area -covered '
          'in a layer of silk mixed with plant litter- and patiently wait nearby. They may spend hours without moving at all,'
          ' alert to ground vibrations indicating the presence of another creature. They also possess excellent vision.'

  '\n\nOnce the unsuspecting victim steps on the trap, it falls into the pit, also becoming impeded by the sticky '
          'silk, and can then be easily ambushed and killed.'
      ,
      'assets/images/icons/large_creatures/myrmeleuka.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Myrmeleuka.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.600 * 2 - 1).toString(), y: (.670 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Ijskala',
      'Warm-blooded beast',
      '14 m',
      'Carnivorous',
      'One of Onyria\'s apex ocean predators. Ijskala thrive in the cold waters surrounding the Glacia regions and hunt'
          ' in groups, being able to chase down, overpower and kill nearly any local sea creature.'

  '\n\nIjskala use their horns to sense water temperature, groom one another and defend themselves. They are able to locate'
          ' prey or navigate using echolocation, and can also produce high pitched sounds to stun other creatures.'

      '\n\nWhen attacking schools of small fish, Ijskala expel all water from their mouths through the small openings '
          'on the sides of their jaws, creating vacuum inside, and absorb all of them at once.'
      ,
      'assets/images/icons/large_creatures/ijskala.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Ijskala.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.650 * 2 - 1).toString(), y: (.240 * 2 - 1).toString()),
        Coordinate(x: (.690 * 2 - 1).toString(), y: (.760 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Tuulrevon',
      'Warm-blooded beast',
      '2 m tall, 4 m long',
      'Omnivorous',
      'Elusive beasts of the Glacia regions and their surrounding tundras. They run swiftly across the land with their'
          ' long, colorful tails trailing behind them, making them an almost magical sight to behold.'

      '\n\nTuulrevon shed their fur every few months, and display a differently colored coat for every season in order'
          ' to blend in better with their surroundings. Due to this, local legends often describe them as mythical beasts'
          ' that control the change of seasons, each of them represented by their four tails.'

  '\n\nTuulrevon\'s large antlers protect its body from attacks that come from the sides. Its elongated, flexible hooves'
          ' allow them to walk easily over muddy or snow-covered terrain. They are opportunistic feeders, and are able'
          ' to both hunt and forage.'
      ,
      'assets/images/icons/large_creatures/tuulrevon.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Tuulrevon.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 0,
      habitat: [Coordinate(x: (.500 * 2 - 1).toString(), y: (.300 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Ansalicht',
      'Hydran',
      '1.8 m long',
      'Carnivorous',
      'Collective organisms formed from many small creatures of the same type -called Lumibranchs- fusing together'
          ' into a single body. In order to do this, each of them takes on a role important to the new organism: one'
          ' of them, attached to the main mass by thin stem, acts as a lure for potential prey. The rest form functional'
          ' jaws with hardened "teeth", and appendages that move rhythmically and propel Ansalicht through the water.'
          ' The individuals on the inside of the mass break down ingested organic matter and absorb nutrients from them.'
          ' Discarded parts, such as bones, are regurgitated.'

      '\n\nSeen from afar, a swimming Ansalicht looks very similar to a school of many small fish moving together,'
          ' due to the contrasting dark skin and bioluminescent spots. When hunting, however, the body stops glowing,'
          ' and only the lure remains visible.'

  '\n\nAnsalicht repoduce by detaching a single specimen from the main body. As each of them contain both sexes, '
          'a single lumibranch is able to produce another full Ansalicht if it succeeds in multiplying.'
      ,
      'assets/images/icons/large_creatures/ansalicht.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Ansalicht.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 0,
      habitat: [Coordinate(x: (.680 * 2 - 1).toString(), y: (.480 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Dogouran',
      'Warm-blooded beast',
      '2.5 m',
      'Carnivorous',
      'Large beasts that live in communities, near the Flaming Steppe\'s volcanic mountains. Their thick fur protects them from'
          ' the cold temperatures caused by the thick clouds of ashes and gas that prevent the sun from warming the surface of'
          ' the area.'

  '\n\nThey spend a lot of time grooming each other\'s manes, being one of the most important social behaviors they engage in.'
          ' They hunt in packs, using complex tactics such as scaring prey so that they take flight only to be shot down by hidden,'
          ' stone-flinging Dogouran, or leading them into dead ends where they may be easily overwhelmed and taken down.'

  '\n\nDogouran packs are usually leaded by an older matriarch, which directs the rest of the pack while hunting, and shows the'
          ' rest where to find water for drinking.'
      ,
      'assets/images/icons/large_creatures/dogouran.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Dogouran.jpg',
      'normal',
      'fire',
      'Locally common',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.360 * 2 - 1).toString(), y: (.350 * 2 - 1).toString()),
        Coordinate(x: (.320 * 2 - 1).toString(), y: (.400 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Terásketos',
      'Hydran',
      '???',
      'Carnivorous',
      'A highly elusive, almost legendary creature, and possibly the largest incarnate organism to ever have existed in Onyria.'

      '\n\nThere have been very few documented sightings of Terásketos. Based on descriptions given by witnesses, it is '
          'speculated that its size surpasses 200 m in length- enough to swallow a fully grown Hvalketos whole.'

  '\n\nIts dark hide is said to be nearly indistinguishable from the deep, dark waters it inhabits, and only its gargantuan,'
          ' tusked jaws can be properly made out from a distance. It possesses trailing tentacles of unknown length, and'
          ' often swims with its mouth open, swallowing everything in its wake. It is theorized that Terásketos is the'
          ' origin of unexplained, impossibly strong sounds that sometimes echo across the ocean.'

  '\n\nIts tusks are thought to be meant for fighting others of its kind, or defense against larger, unknown beasts'
          ' that are, or were once able to prey upon it.'
      ,
      'assets/images/icons/large_creatures/terásketos.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Terásketos.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
    halfDanger: 1,
      habitat: [Coordinate(x: (.920 * 2 - 1).toString(), y: (.550 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Zephyrnos',
      'Thalassus',
      '12 m long, 6 m wingspan',
      'Carnivorous',
      'Described in old legends as one of the four children of Primal aeru Okyanos. In ancient times, they were thought'
          ' to absorb the sun\'s heat in order to blow warm winds towards the land, and bring forth the season of spring.'

          '\n\nZephyrnos attach themselves to cliffsides and large coraline structures as the tide rises, using their tails to grab'
          ' onto them. Then, they spread their specially adapted fins, and bask in the sun before returning to the water.'

          '\n\nThey are capable of changing the texture and color of their bodies, camouflaging expertly upon nearly any surface.'
          ' Once their prey comes close enough, they thrust forwards and quickly absorb the unsuspecting creature.'
      ,
      'assets/images/icons/large_creatures/zephyrnos.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Zephyrnos.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.035 * 2 - 1).toString(), y: (.500 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Gluhenwyr',
      'Lindwurm',
      '3 m tall, 12 m long',
      'Mineral',
      'A blind lindwurm adapted to the flooded cave system that supports the Undergrove biome. Gluhenwyr is believed'
          ' to be the force behind the excavation of these tunnels, and deviating the water\'s flow whenever necessary'
          ' to avoid their collapse.'

  '\n\nIt is said to be a calm beast, barely aknowledging those who come near it. However, old tales speak of it being '
          'able to transfigure large bodies of water into a clear slime, trapping and suffocating everything contained'
          ' inside it. Locals that have managed to spot Gluhenwyr\'s bioluminescent rings moving inside a cave are considered'
          ' blessed.'
      ,
      'assets/images/icons/large_creatures/gluhenwyr.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Gluhenwyr.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.700 * 2 - 1).toString(), y: (.350 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Nyktego',
      'Lindwurm',
      '15 m long',
      '???',
      'A lindwurm shrouded in mystery. Many people claim to have seen Nyktego in their dreams at some point despite not'
          ' having heard of her before, and some even recall that the beast has attempted to communicate in an '
          'incomprehensible tongue.'

  '\n\nActual sightings of her are rare, but all have occured at night, in the area surrounding the Spine of the World.'
          ' Faint unintelligible whispers can be heard when she is near, and her body is said to blend unnaturally well'
          ' with the landscape and the night sky. All attempts to locate her during the day have failed.'
      ,
      'assets/images/icons/large_creatures/nyktego.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Nyktego.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.170 * 2 - 1).toString(), y: (.500 * 2 - 1).toString())]

  );



  addSmallCreature(
      'Nilneidr',
      'Lindwurm',
      '25 m long ',
      'Carnivorous',
      'An ancient lindwurm considered the personification of the Green Serpent river, largest in Onyria. Nilneidr has'
          ' lost his legs, for he does not need them.'

      '\n\nHe is thought to be a direct descendant of primal aeru Naja\'eret. Legends tell that when he was born -merely'
          ' the size of a worm-, he slithered slowly from the center of the Badlands towards the sea, surviving the very'
          ' harsh conditions of the desert.'

      '\n\nOnce he finally reached the sea, he fed on fish and grew. But once a year, he always returns to the place where'
          ' he was born, larger and stronger every time.'

      '\n\nNilneidr\'s many journeys from land to sea and back are said to have sculpted the river named after him, which'
          ' gives life to a lush oasis ecosystem. When it is time for Nilneidr to revisit his birthplace, locals throw'
          ' precious metals, stones and food offerings into the river, grateful for the fertility he brings to an otherwise'
          ' sterile land.'
      ,
      'assets/images/icons/large_creatures/nilneidr.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Nilneidr.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.770 * 2 - 1).toString(), y: (.620 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Constellago',
      'Lindwurm',
      'Main body 1 m long, 15 m total length',
      'Carnivorous',
      'A marine lindwurm that has managed to survive by remaining in her juvenile form in order to maintain regenerative potential.'

      '\n\nConstellago lives in symbiosis with other tiny organisms, which attach to the main body in tentacle-like structures.'
          ' She is easily seen when approaching the surface due to the bright, trailing multicolor lights of her tail, reminiscent'
          ' of a starry night sky.'

  '\n\nHer tentacles are capable of delivering a powerful sting, even capable of disabling larger creatures that approach without'
          ' caution. The tendrils ensnare small sea animals, which are pulled into the main body and digested.'

  '\n\nIf Constellago were to suffer extensive damage, she is able to leave behind most of her mass and revert to a small,'
          ' crystalized "egg" state, along with some of her symbionts. She may then begin growing once again.'
      ,
      'assets/images/icons/large_creatures/constellago.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Constellago.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.570 * 2 - 1).toString(), y: (.580 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Garamandara',
      'Lindwurm',
      '18 m ',
      'Omnivorous',
      'Garamandara is believed to have initially been a Wurmling subjected to experimentation by ancient human researchers,'
          ' in order to study the effects of Aeras energy on living incarnate creatures.'

    'Placed in the Kiln and bombarded with energy from different sources, Garamandara now displays mixed traits from many Onyrian'
          ' creatures, and still continues to grow and mutate. He is able to feed on any available food source -including minerals-'
          ' rather than specializing on one only. He is the best living example of just how extreme a Lindwurm\'s capacities for'
          ' mutation can be.'

  'He dwells in the depths of the Ark\'s research facilities -a place avoided by most creatures due to the unstable negative'
          ' Aeras within- and appears to be very intelligent. He is not hostile, and is allegedly capable of communicating'
          ' vocally in a crude version of the ancient human\'s dialect.'

  'Garamandara is often seen as a divine entity by the tribes that have settled around the remains of the Ark, seeking long'
          ' lost human artifacts to trade for goods.'
      ,
      'assets/images/icons/large_creatures/garamandara.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Garamandara.jpg',
      'normal',
      'fire',
      'Unique',
      'large',


  );


  addSmallCreature(
      'Leukarax',
      'Lindwurm',
      '13 m long',
      'Carnivorous, Scavenging',
      'Leukarax is believed to be one of the most cunning lindwurms in existence. He is also a rare instance of a Wurm specimen'
          ' with albinism, suffering from light sensitivity and partial blindness. This is made even more curious by the fact'
          ' that he has managed to successfully survive to his adult form despite his condition.'

    '\n\nLeukarax inhabits the Forest of Bone, where he reigns as an apex predator. He also feeds on any carcasses he'
          ' encounters throughout his territory, completely stripping bones or exoskeletons of any remaining flesh, and'
          ' using appropriately shaped pieces as weapons or tools.'

  '\n\nHe often prefers to kill with the least possible effort, luring his victims into complex traps. He builds these'
          ' traps by manipulating and making use of naturally available materials.'

  '\n\nSome of his tactics for luring in victims include mimicking the cries of newborn animals from the surrounding plains.'
          ' Unadapted beasts that hear the cries unknowingly enter the spore-filled forest, and often suffocate quickly, if not'
          ' caught in a trap and finished off by Leukarax first. He has also been known to mimic human cries for help,'
          ' particularly of children. It is rumored that he is capable of speech, but this is yet to be proven due to his hostility.'

  '\n\nHe possesses special adaptations such as gill-like slits on his neck, which allow him to breathe in the tainted air of'
          ' his territory, and an additional hand-like appendage at the tip of his tail, which he often uses to grab and'
          ' manipulate objects while on the move.'
      ,
      'assets/images/icons/large_creatures/leukarax.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Leukarax.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.610 * 2 - 1).toString(), y: (.670 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Xyl\'aeru',
      'Lesser aeru',
      '30 cm - 2.5 m tall',
      'Aeras-based',
      'Spirits formed mostly from the essence of an Arthropodan.Their size and shape varies greatly according to the place they'
          ' inhabit. Some come in the form of collective entities, comprised of many small individuals with a shared mind.'

      '\n\nXyl\'aeru possess affinity with earth, wind or water energy. They behave quite neutrally, following repeated patterns,'
          ' and may form symbiotic relationships with summoners if given enough time. They do not, however, offer sporadic help'
          ' in exchange for energy as other spirits may do, as they cannot grasp the concept of a trade.'
      ,
      'assets/images/icons/large_creatures/xyl\'aeru.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Xyl\'aeru.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.610 * 2 - 1).toString(), y: (.670 * 2 - 1).toString()),
        Coordinate(x: (.310 * 2 - 1).toString(), y: (.610 * 2 - 1).toString()),
        Coordinate(x: (.750 * 2 - 1).toString(), y: (.410 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Kyn\'aeru',
      'Lesser aeru',
      '1.5 - 3 m long',
      'Aeras-based',
      'Spirits formed mostly from the essence of a predator. Kyn\'aeru seek out any available sources of energy, even hunting'
          ' down and assimilating weaker aeru.'

  '\n\nAlthough they cannot inflict physical harm upon incarnate victims, they will chase and purposely torment their targets,'
          ' feeding on the resulting energy from extreme negative emotions.'

  '\n\nKyn\'aeru may posess affinity with fire energy. They usually behave with hostility or mistrust towards summoners,'
          ' but may agree to pact if they percieve benefit for themselves. They are usually asked to help track down'
          ' creatures, people or other aeru.'
      ,
      'assets/images/icons/large_creatures/kyn\'aeru.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Kyn\'aeru.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      halfDanger: 1,
      habitat: [Coordinate(x: (.750 * 2 - 1).toString(), y: (.410 * 2 - 1).toString()),
        Coordinate(x: (.350 * 2 - 1).toString(), y: (.410 * 2 - 1).toString()),
        Coordinate(x: (.350 * 2 - 1).toString(), y: (.610 * 2 - 1).toString())]

  );


  addSmallCreature(
      'El\'aeru',
      'Lesser aeru',
      '1.5 - 3 m tall',
      'Aeras-based',
      'Spirits formed mostly from the essence of a warm-blooded creature. El\'aeru usually begin their existence when'
          ' powerful negative feelings, such as regret or rage persist in the world after the death of a beast or humanoid.'
          ' They can be commonly found wandering around their place of death, not aggressive unless provoked.'

      '\n\nEl\'aeru may agree to pact with summoners, or assist them if offered energy. They do not posess any specific'
          ' elemental affinities.'
      ,
      'assets/images/icons/large_creatures/el\'aeru.png',
      3,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/El\'aeru.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.350 * 2 - 1).toString(), y: (.610 * 2 - 1).toString()),
        Coordinate(x: (.360 * 2 - 1).toString(), y: (.500 * 2 - 1).toString()),
        Coordinate(x: (.560 * 2 - 1).toString(), y: (.320 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Ner\'aeru',
      'Lesser aeru',
      '2-15 m long',
      'Aeras-based',
      'Spirits formed mostly from the essence of a Thalassus. They usually possess affinity with  water or wind energy,'
          ' and roam the skies near large lakes. When they descend close to the ground, their sole presence usually alters'
          ' weather conditions, bringing rain, hail, mist or '
          'storms'

      '\n\nOlder, more powerful Ner\'aeru are usually very proud and not quick to trust summoners. They will only'
          ' comply to the will of a powerful presence.'
      ,
      'assets/images/icons/large_creatures/ner\'aeru.png',
      4,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Ner\'aeru.jpg',
      'normal',
      'fire',
      'Uncommon',
      'large',
      habitat: [Coordinate(x: (.630 * 2 - 1).toString(), y: (.370 * 2 - 1).toString()),
        Coordinate(x: (.660 * 2 - 1).toString(), y: (.550 * 2 - 1).toString()),
        Coordinate(x: (.400 * 2 - 1).toString(), y: (.530 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Danau',
      'Primal aeru',
      '???',
      'Aeras-based',
      'Considered the friendliest of the five Primal Aeru, she is also referred to as "the Monarch of Butterflies",'
          ' and "World\'s Memory". Danau was the first God Spirit to approach and communicate with the original human'
          ' civilization, who wished to learn from her. Thus, the Grand Archives of Onyria were created in order to transcribe'
          ' and store her knowledge. However, Danau only allows access to those she deems worthy.'

  '\n\nShe is believed to be the origin of all Arthropoda-class creatures, and her presence occupies the entirety'
          ' of the largest forest in Onyria. Thousands of spiritual butterflies -easily identifiable due to their'
          ' ethereal blue glow- act as her eyes, watching over her domains.'
      ,
      'assets/images/icons/large_creatures/danau.png',
      5,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Danau.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.470 * 2 - 1).toString(), y: (.590 * 2 - 1).toString())]

  );

  addSmallCreature(
      'Rajavatra',
      'Primal aeru',
      '???',
      'Aeras-based',
      'A God Spirit also known as "The Burning Tyrant" or "The Raging King".'

      '\n\nRajavatra rules over the Flaming Steppe region, one of the most inhospitable environments known'
          ' to the Onyrian continent. He is said to test the willpower and physical endurance of all those'
          ' who enter his territory- a land covered in volcanic ash, geisers and caustic hot springs where'
          ' only the strongest and most adaptable survive.'

  '\n\nHe often ignores attempts to communicate with him unless the visitor has proven their resilience both'
          ' in body and spirit. Local inhabitants, gathered in mountain monasteries, undergo harsh training in'
          ' order to be closer to Rajavatra, whom they worship.'
      ,
      'assets/images/icons/large_creatures/rajavatra.png',
      5,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Rajavatra.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.370 * 2 - 1).toString(), y: (.350 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Qul-Quetzatl',
      'Primal aeru',
      '???',
      'Aeras-based',
      'Also referred to as the "Bringer of Rain" and "The Gilded God". Possessing a personality often described as carefree '
          'and childlike, Qul-Quetzatl\'s presence occupies the entire Geko Wetlands area and is strongest in the Gilded Lake;'
          ' largest of its kind in the world.'

  '\n\nQul-Quetzatl is believed to be the father of all amphibians and lindwurms that inhabit Onyria. He is allegedly generous'
          ' and loving towards his worshippers, and shows his good will by placing gold nuggets in the many streams of the'
          ' Wetlands for his people to find. Legend has it that he is able to transmute anything he touches into the precious'
          ' metal.'

      '\n\nHe is, however, also a trickster, and has been known to decieve those who attempt to take advantage of his'
          ' generosity. There are stories of pillagers leaving the Wetlands with as much gold as they can carry, only to'
          ' find common river stones in their bags once they return home.'
      ,
      'assets/images/icons/large_creatures/qul-Quetzatl.png',
      5,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Qul-Quetzatl.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.630 * 2 - 1).toString(), y: (.370 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Naja\'eret',
      'Primal aeru',
      '???',
      'Aeras-based',
      'A God Spirit also referred to as "The Earthshaper" and "Jaws of Life". '

      '\n\nNaja\'eret, mother of all saurians, is said to have sculpted the unique landscape of the Badlands by crushing '
          'the mountains between her coils, and folding the earth into valleys as she slithered across it.'

  '\n\nShe is said to be the force tasked with taking the dead back to the earth from whence they came, so that they'
          ' may live again in other forms; her body, woven between both realms, ties life and death together. Her'
          ' territory, a land of both barren sands and lush oasis, is seen as a symbol of this perpetual cycle.'

  '\n\nShe has a large number of worshippers scattered throughout her domains, which have built impressive arch-shaped'
          ' monuments at the center of the Badlands, where her presence is felt strongest.'
      ,
      'assets/images/icons/large_creatures/naja\'eret.png',
      5,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Naja\'eret.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [Coordinate(x: (.700 * 2 - 1).toString(), y: (.660 * 2 - 1).toString())]

  );


  addSmallCreature(
      'Okyanos',
      'Primal aeru',
      '???',
      'Aeras-based',
      'A God Spirit also referred to as "The Endless One", thought to be long enough to wrap their body around the entire'
          ' world. Their presence seems to originate from the depths of Leviathan\'s Trench, but they are able to extend '
          'their vastly long body in order to reach any part of their territory.'

  '\n\nOkyanos is arguably the most powerful and influential of the Primal aeru, being able to manifest their presence'
          ' anywhere throughout the seas and oceans of Onyria. They are the origin of all thalassus and hydran creatures,'
          ' and some even believe that all life emerged from their domains, later conquering the land and skies.'

  '\n\nOkyanos does not communicate as other Primal aeru do, and has often been described as alien and incomprehensible.'
          ' It is theorized that Okyanos is not a single mind, but a collective conscience of sorts; many smaller aeru'
          ' chained together as one to create the largest known spirit.'
      ,
      'assets/images/icons/large_creatures/okyanos.png',
      5,
      'https://github.com/RyokCR/Bestiarium/raw/main/content/drawings/Okyanos.jpg',
      'normal',
      'fire',
      'Unique',
      'large',
      habitat: [ Coordinate(x: (.850 * 2 - 1).toString(), y: (.490 * 2 - 1).toString())]

  );

}