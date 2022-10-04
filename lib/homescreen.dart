import 'package:emoj_app/introview/appinfo.dart';
import 'package:emoj_app/item_card.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        title: const Text(
          "E M O J A P P",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w700, color: Colors.black),
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(15),
            child: Icon(
              Icons.favorite,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.greenAccent,
              ),
              child: Center(
                child: Text(
                  "I N F O",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Icons.telegram),
              title: Text(
                "App Info",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const ListTile(
              leading: Icon(Icons.info),
              title: Text(
                "Terms&Condition",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            ListTile(
              leading: const Icon(Icons.help),
              title: const Text(
                "Help",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return const AppInfo();
                }));
              },
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Stack(children: [
          PageView(
            children: [
              ItemCard(
                image: 'assets/image/face (1).png',
                text: 'Face Screaming in Fear',
                description:
                    'While intended to represent horror and frigh  A yellow face screaming in fear, depicted by wide, white eyes, a long, open mouth, hands pressed on cheeks, and a pale blue forehead, as if it has lost its color. Its expression evokes Edvard Munch’s iconic painting',
              ),
              ItemCard(
                image: 'assets/image/face (2).png',
                text: 'Face with Hand Over Mouth',
                description:
                    'A yellow face with a hand covering its mouth. Displays most often with smiling eyes and/or blushing cheeks, suggesting coy laughter or embarrassment, as if cheekily saying Oops!,May be used to similar effect as 🙊 Speak-No-Evil Monkey.',
              ),
              ItemCard(
                image: 'assets/image/face (3).png',
                text: 'Face with Medical Mask',
                description:
                    'A yellow face wearing a white surgical mask, as used by health workers in hospitals as well as the general public during a pandemic. May be worn to avoid sickness or spreading airborne diseases.In 2020, this emoji became primarily used in reference to Coronavirus / COVID-19.',
              ),
              ItemCard(
                image: 'assets/image/face (4).png',
                text: 'Face with Monocle',
                description:
                    'A yellow face with furrowed eyebrows wearing a monocle. Usually depicted with a small, intent frown and head slightly upturned, as if in careful inspection.May show that someone is pondering, considering, or questioning something, sometimes with a sense of skeptical or ironic observation or encouraging a closer look at some content.',
              ),
              ItemCard(
                image: 'assets/image/face (5).png',
                text: 'Face Without Mouth',
                description:
                    'A yellow face with simple, open eyes and no mouth, as if at a loss for words. Meaning widely varies, but commonly conveys speechlessness, humility, and silence. May also convey moderately negative emotions, such as disappointment, frustration, or sadness. ',
              ),
              ItemCard(
                image: 'assets/image/face (6).png',
                text: 'Face with Spiral Eyes',
                description:
                    'Although it’s called “confounded face,” this emoji is more commonly used to mean something has brought you to the point of tears. Some things are just so wonderful you want to cry. Other things are so terrible you also want to cry,A face showing a spiral eyes, commonly used to indicate dizziness, but may also represent hypnosis or other forms of disorientation.',
              ),
              ItemCard(
                image: 'assets/image/face (7).png',
                text: 'Face with Steam From Nose',
                description:
                    'May convey various negative emotions, including irritation, anger, and contempt. May also convey feelings of pride, dominance, and empowerment. ',
              ),
              ItemCard(
                image: 'assets/image/face (8).png',
                text: ' Face with Symbols on Mouth',
                description:
                    'An angry-red face with a black bar and white grawlixes covering its mouth, indicating,its swearing or being vulgar.Grawlixes are typographical symbols (e.g., @#%&!) representing swear words or obscenities.Often used to convey an outburst of anger, frustration, or rage',
              ),
              ItemCard(
                image: 'assets/image/face (9).png',
                text: 'Face with Tears of Joy',
                description:
                    'A yellow face with a big grin, uplifted eyebrows, and smiling eyes, each shedding a tear from laughing so hard. Widely used to show something is funny or pleasing.This emoji is sometimes mistaken for sobbing, but the actual emoji meaning is laughter—laughing so hard you cry, that is.',
              ),
              ItemCard(
                image: 'assets/image/face (10).png',
                text: 'Face with Thermometer',
                description:
                    'A yellow face with raised or furrowed eyebrows and a thermometer in its mouth. Often depicted with red cheeks, as if feverish. May be used to represent a hospital patient or person with a cold or flu.Differs from other smileys conveying illness, such as 🤢 Nauseated Face (appearing as if its going to vomit or 🤕 Face With Head-Bandage physical injury',
              ),
              ItemCard(
                image: 'assets/image/face (11).png',
                text: 'Fearful Face',
                description:
                    'A face with small, open eyes, open frown, raised eyebrows, and a pale blue forehead, as if experiencing a cold flash. Samsung’s design shows upper teeth and tongue.While intended to represent fear (less intense than 😱 Face Screaming in Fear), it also conveys a wide variety of emotions, including feeling amazed, shocked, sad, upset, and cold.',
              ),
              ItemCard(
                image: 'assets/image/face (12).png',
                text: 'Grimacing Face',
                description:
                    'A yellow face with simple open eyes showing clenched teeth. May represent a range of negative or tense emotions, especially nervousness, embarrassment, or awkwardness,The “grimacing face” is used for a range of negative emotions: nervousness, awkwardness, embarrassment, it covers them all!',
              ),
              ItemCard(
                image: 'assets/image/face (13).png',
                text: ' Grinning Face',
                description:
                    'A yellow face with simple, open eyes and a broad, open smile, showing upper teeth and tongue on some platforms. Often conveys general pleasure and good cheer or humor.Not to be confused with 😃 Grinning Face With Big Eyes or 😄 Grinning Face With Smiling Eyes, which have the same smiles but more expressive eye shapes.',
              ),
              ItemCard(
                image: 'assets/image/face (14).png',
                text: 'Grinning Face with Big Eyes',
                description:
                    'A yellow face with smiling eyes and a broad, open smile, showing upper teeth and tongue on some platforms. Often conveys general happiness and good-natured amusement.\nA yellow face with smiling eyes and a broad, open smile, showing upper teeth and tongue on some platforms. Often conveys general happiness and good-natured amusement.',
              ),
              ItemCard(
                image: 'assets/image/face (15).png',
                text: 'Grinning Face with Sweat',
                description:
                    'Has the same grin and eyes as 😄 Grinning Face With Smiling Eyes but with a single, blue bead of sweat, usually over its left eye. Intended to depict nerves or discomfort but commonly used to express a close call, as if saying Whew! and wiping sweat from the forehead. ',
              ),
              ItemCard(
                image: 'assets/image/face (16).png',
                text: 'Grinning Squinting Face',
                description:
                    'A yellow face with a broad, open smile and scrunched, X-shaped eyes. Often conveys excitement or hearty laughter.Similar to 😀 Grinning Face but with eyes that might say Squee! or Awesome! An emoji form of the >< or xD emoticons.',
              ),
              ItemCard(
                image: 'assets/image/face (17).png',
                text: ' Hot Face',
                description:
                    'A reddish-orange face with furrowed eyebrows, tongue stuck out, and beads of sweat, as if overheated from high temperatures. Number and position of sweat droplets vary by platforms. May also represent physical attractiveness (slang, hot).',
              ),
              ItemCard(
                image: 'assets/image/face (18).png',
                text: 'Smiling Face with Open Hands',
                description:
                    'A yellow face smiling with open hands, as if giving a hug. May be used to offer thanks and support, show love and care, or express warm, positive feelings more generally.Due to its hand gesture, often used to represent jazz hands, indicating such feelings as excitement, enthusiasm, or a sense of flourish or accomplishment.',
              ),
              ItemCard(
                image: 'assets/image/face (19).png',
                text: 'Loudly Crying Face',
                description:
                    'A yellow face with an open mouth wailing and streams of heavy tears flowing from closed eyes. May convey inconsolable grief but also other intense feelings, such as uncontrollable laughter, pride or overwhelming joy.',
              ),
              ItemCard(
                image: 'assets/image/face (20).png',
                text: 'Lying Face',
                description:
                    'A yellow face with raised eyebrows, enlarged eyes, slight frown, and long nose, indicating it’s telling a lie in the manner of Pinocchio. Like that character, May represent lying, a liar, and other concepts of deceit and dishonesty to varying degrees of intensity. ',
              ),
              ItemCard(
                image: 'assets/image/face (21).png',
                text: 'Money-Mouth Face',
                description:
                    'Used for a wide range of content dealing with money, including: making money, loving wealth, being or feeling rich, and concepts of success and excellence,A yellow face with raised eyebrows, dollar signs for eyes, and an open smile sticking out a tongue styled after a green, dollar banknote. Some platforms depict the dollar-sign eyes in green circles.',
              ),
              ItemCard(
                image: 'assets/image/face (22).png',
                text: 'Nauseated Face',
                description:
                    'A sickly-green face with concerned eyes and puffed, often red cheeks, as if holding back vomit. May represent physical illness or general disgust. Not to be confused with 🤮 Face Vomiting.',
              ),
              ItemCard(
                image: 'assets/image/face (23).png',
                text: 'Nerd Face',
                description:
                    'A smiling yellow face with glasses, often with teeth showing, originally buck teeth on most platforms.While this emoji is often used by people calling themselves nerds in a self-deprecating way, the nerdy glasses paired with buck teeth can, and often does, evoke anti-Asian stereotypes.',
              ),
              ItemCard(
                image: 'assets/image/face (24).png',
                text: 'Neutral Face',
                description:
                    'A yellow face with simple, open eyes and a flat, closed mouth. Intended to depict a neutral sentiment but often used to convey mild irritation and concern or a deadpan sense of humor.',
              ),
              ItemCard(
                image: 'assets/image/face (25).png',
                text: 'Partying Face',
                description:
                    'A yellow face with a party hat blowing a party horn as confetti floats around its head. Used for celebrating joyous occasions (such as New Years Eve or World Emoji Day and enjoying good times more generally.',
              ),
              ItemCard(
                image: 'assets/image/face (26).png',
                text: 'Pensive Face',
                description:
                    'A pensive, remorseful face. Saddened by life. Quietly considering where things all went wrong. Depicted as a yellow face with sad, closed eyes, furrowed eyebrows, and a slight, flat mouth.',
              ),
              ItemCard(
                image: 'assets/image/face (27).png',
                text: ' Enraged Face',
                description:
                    'A red face with an angry expression: frowning mouth with eyes and eyebrows scrunched downward. Bears the same expression as 😠 Angry Face on most platforms and may convey more intense degrees of anger, e.g., hate or rage.',
              ),
              ItemCard(
                image: 'assets/image/face (28).png',
                text: 'Rolling on the Floor Laughing',
                description:
                    'A yellow face with a big grin and scrunched, X-shaped eyes, tilted on its side as if rolling on the floor laughing (the internet acronym ROFL). Sheds two tears and tilts right on most platforms. Often conveys hysterical laughter more intense than 😂 Face With Tears of Joy.',
              ),
              ItemCard(
                image: 'assets/image/face (29).png',
                text: ' Shushing Face',
                description:
                    'A yellow face placing an index finger over pursed lips, as if issuing Shh! or Shush! for silence. Some platforms feature raised eyebrows. Apple’s design suggests the face is tilting back slightly. ',
              ),
              ItemCard(
                image: 'assets/image/face (30).png',
                text: 'Sleeping Face',
                description:
                    'A yellow face with eyes closed and mouth letting out three, cartoon-styled Zzz’s overhead to indicate its sound asleep. The Zzz’s appear blue or purple across most platforms. May also represent boredom (slang, snooze)',
              ),
              ItemCard(
                image: 'assets/image/face (31).png',
                text: 'Sleepy Face',
                description:
                    'A yellow face with closed eyes, mouth slightly open, and a blue snot bubble coming from its nose. Snot bubbles indicate a character is tired or sleeping in anime or manga. Not to be confused with 😴 Sleeping Face',
              ),
              ItemCard(
                image: 'assets/image/face (32).png',
                text: 'Slightly Smiling Face',
                description:
                    'A yellow face with simple, open eyes and a thin, closed smile. Conveys a wide range of positive, happy, and friendly sentiments. Its tone can also be patronizing, passive-aggressive, or ironic, as if saying This is fine when it’s really not',
              ),
              ItemCard(
                image: 'assets/image/face (33).png',
                text: 'Smiling Face with Halo',
                description:
                    'A yellow face with smiling eyes, closed smile, and halo, usually blue, overhead. Often represents angels, prayers, and blessings. May also convey angelic behavior, e.g., doing good deeds. See also 👼 Baby Angel',
              ),
              ItemCard(
                image: 'assets/image/face (34).png',
                text: 'Smiling Face with Heart-Eyes',
                description:
                    'A yellow face with an open smile, sometimes showing teeth, and red, cartoon-styled hearts for eyes. Often conveys enthusiastic feelings of love, infatuation, and adoration, e.g., I love/am in love with this person or thing.',
              ),
              ItemCard(
                image: 'assets/image/face (35).png',
                text: 'Smiling Face with Hearts',
                description:
                    'A yellow face with smiling eyes, a closed smile, rosy cheeks, and several hearts floating around its head. Expresses a range of happy, affectionate feelings, especially being in love. The placement of the hearts varies slightly by platform.',
              ),
              ItemCard(
                image: 'assets/image/face (36).png',
                text: 'Star-Struck',
                description:
                    'A yellow face with a broad, open smile, showing upper teeth on most platforms, with stars for eyes, as if seeing a beloved celebrity. Color of stars widely varies by platform, though commonly gold or red. May express that someone or something is amazing, fascinating, impressive, or exciting.',
              ),
              ItemCard(
                image: 'assets/image/face (37).png',
                text: ' Thinking Face',
                description:
                    'A yellow face with furrowed eyebrows looking upwards with thumb and index finger resting on its chin. Intended to show a person pondering or deep in thought. Often used to question or scorn something or someone, as if saying Hmm, I dont know about that. Tone varies, including earnest, playful, puzzled, skeptical, and mocking.',
              ),
              ItemCard(
                image: 'assets/image/face (38).png',
                text: 'Upside-Down Face',
                description:
                    'A classic smiley, turned upside down. Implemented as a flipped version of 🙂 Slightly Smiling Face on most platforms.Commonly used to convey irony, sarcasm, joking, or a sense of goofiness or silliness. Its intent can be similar to the bemused Oh well! of 🤷 Person Shrugging or the shruggie emoticon',
              ),
              ItemCard(
                image: 'assets/image/face (39).png',
                text: 'Weary Face',
                description:
                    'A yellow face with closed eyes, furrowed brows, and a broad, open frown, as if distraught to the point of giving up. Usually shown with upper teeth and sometimes tongue.May convey various feelings of frustration, sadness, amusement, and affection. Often playful in tone.',
              ),
              ItemCard(
                image: 'assets/image/face (40).png',
                text: 'Winking Face',
                description:
                    'A yellow face with a slight smile or open mouth shown winking, usually its left eye. May signal a joke, flirtation, hidden meaning, or general positivity. Tone varies, including playful, affectionate, suggestive, or ironic',
              ),
              ItemCard(
                image: 'assets/image/face (41).png',
                text: ' Winking Face with Tongue',
                description:
                    'A yellow face sticking out its tongue and making a zany wink, usually shown with its right eye closed and left wide open. Often conveys a sense of fun, excitement, wackiness, buffoonery, or joking.',
              ),
              ItemCard(
                image: 'assets/image/face (42).png',
                text: 'Zany Face',
                description:
                    'A yellow face with its head tilted, its tongue hanging out of a big grin, and wide eyes in a wild, cockeyed expression. Generally used to express silliness,Commonly represents acting goofy, having fun, and partying and is usually used in a positive manner. May be used in reference to someone or something that is off-kilter.',
              ),
              ItemCard(
                image: 'assets/image/face (43).png',
                text: 'Zipper-Mouth Face',
                description:
                    'A yellow face with simple, open eyes and a closed zipper for a mouth. Meaning widely varies, but commonly conveys a secret or that someone will keep one (e.g., My lips are sealed). May also be used to tell someone to stop talking (e.g., Zip it! or I’ll shut up now).',
              ),
              ItemCard(
                image: 'assets/image/face (44).png',
                text: 'Beaming Face with Smiling Eyes',
                description:
                    'A yellow face with smiling eyes and full-toothed grin, as if saying Cheese! for the camera. Teeth may be smoothed-over or crosshatched. Often expresses a radiant, gratified happiness. Tone varies, including warm, silly, amused, or proud.',
              ),
              ItemCard(
                image: 'assets/image/face (45).png',
                text: ' Cold Face',
                description:
                    'An icy-blue face with gritted teeth usually depicted with icicles clinging to its cheeks or jaw, as if frozen from extreme cold. May also represent unfriendliness (slang, cold) or excellence (slang, cool or chill)',
              ),
              ItemCard(
                image: 'assets/image/face (46).png',
                text: 'Confounded Face',
                description:
                    'A yellow face with scrunched, X-shaped eyes and a crumpled mouth, as if quivering in frustration or holding back tears. May be used to represent being overcome with various emotions, including irritation, frustration, disgust, and sadness, as if to the point of defeat.  ',
              ),
              ItemCard(
                image: 'assets/image/face (47).png',
                text: ' Disguised Face',
                description:
                    'A yellow face with big glasses, a large nose, thick eyebrows, and a mustache. Used to represent someone in disguise.The features of this particular disguised face are taken from the “Groucho Mask” or “Groucho Glasses,” designed in the likeness of the caricature played by Julius Henry Marx in the Marx Brothers films.',
              ),
              ItemCard(
                image: 'assets/image/face (48).png',
                text: 'Face with Crossed-Out Eyes',
                description:
                    'A yellow face with X’s for eyes and a round, open mouth. Often depicted with raised or furrowed eyebrows. Facebook’s design features a purple forehead. May convey a heightened or hyperbolic sense of such feelings as shock, surprise, disbelief, awe, and amazement, as if staggered to the point of disorientation (i.e., dizzy).',
              ),
              ItemCard(
                image: 'assets/image/face (49).png',
                text: 'Drooling Face',
                description:
                    'A yellow face, usually shown with closed eyes and raised eyebrows, with saliva drooling from one corner of its mouth. Often used to show desire for a person (sexy, attractive) or object (e.g., delicious food). May also represent someone is tired or sleeping.',
              ),
              ItemCard(
                image: 'assets/image/face (50).png',
                text: 'Exploding Head',
                description:
                    'A yellow face with an open mouth, the top of its head exploding in the shape of a brain-like mushroom cloud. A visual form of the expression mind blown, it may represent such emotions as shock, awe, amazement, and disbelief.',
              ),
              ItemCard(
                image: 'assets/image/face (51).png',
                text: 'Expressionless Face',
                description:
                    'A yellow face with flat, closed eyes and mouth. May convey a sense of frustration or annoyance more intense than suggested by 😐 Neutral Face, as if taking a moment to collect itself.',
              ),
              ItemCard(
                image: 'assets/image/face (52).png',
                text: 'Expressionless Face',
                description:
                    'A yellow face with flat, closed eyes and mouth. May convey a sense of frustration or annoyance more intense than suggested by 😐 Neutral Face, as if taking a moment to collect itself',
              ),
              ItemCard(
                image: 'assets/image/face (53).png',
                text: 'Face Exhaling',
                description:
                    'A face showing a visible breath of air being dispelled. Used to represent relief, exhaustion, or as a sigh of disappointment or displeasure.May also be used to indicate the exhaling of smoke.',
              ),
              ItemCard(
                image: 'assets/image/face (54).png',
                text: 'Face Savoring Food',
                description:
                    'A yellow face with smiling eyes and a broad, closed smile with its tongue sticking out of one corner, as if licking its lips in appetite or contentment. Widely used to convey that a food item is delicious. May also express that a person is attractive.',
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
