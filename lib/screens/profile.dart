import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  final List<String> imageSliders = [
    'https://images.ctfassets.net/3mv54pzvptwz/2H1iiMOdNwEf4OML5kqHSL/58118e759c87362201bf4c3c5ac8098a/neymar_e_rica_treino_BR-2020.jpeg',
    'https://pbs.twimg.com/media/F4F0WrPWAAEIGWC?format=jpg&name=large',
    'https://s.glbimg.com/es/ge/f/original/2014/12/15/neymar_malhando.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          CarouselSlider(
            items: [
              Container(
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://images.ctfassets.net/3mv54pzvptwz/2H1iiMOdNwEf4OML5kqHSL/58118e759c87362201bf4c3c5ac8098a/neymar_e_rica_treino_BR-2020.jpeg'),
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://pbs.twimg.com/media/F4F0WrPWAAEIGWC?format=jpg&name=large'),
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
              Container(
                margin: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        'https://s.glbimg.com/es/ge/f/original/2014/12/15/neymar_malhando.jpg'),
                  ),
                  borderRadius: BorderRadius.circular(0),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 360,
              aspectRatio: 16 / 9,
              viewportFraction: 1.05,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              enlargeCenterPage: true,
              enlargeFactor: 0.150,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imageSliders.asMap().entries.map((entry) {
              return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Container(
                  width: 12.0,
                  height: 12.0,
                  margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: _current == entry.key
                          ? Colors.blueAccent
                          : Colors.grey),
                ),
              );
            }).toList(),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black87,
                      width: 3,
                    ),
                  ),
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://www.mykhel.com/thumb/250x90x250/football/players/8/61278.jpg'),
                  ),
                ),
                SizedBox(width: 8), // Espaçamento entre a foto e o texto
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Neymar Junior',
                      style: TextStyle(
                        fontFamily: "GothicA1",
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                        height: 4), // Espaçamento entre o nome e a ocupação
                    Text(
                      'Jogador de Futebol',
                      style: TextStyle(
                        fontFamily: "GothicA1",
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.whatsapp,
                        color: Color.fromRGBO(37, 211, 102, 1.0),
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        FontAwesomeIcons.instagram,
                        color: Color.fromRGBO(205, 72, 107, 1.0),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black54,
            thickness: 1,
            height: 10,
          ),
          SizedBox(height: 4),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sobre:',
              style: TextStyle(
                fontSize: 20,
                fontFamily: "GothicA1",
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 0),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 0),
            child: Text(
              'Quem é Neymar Jr? Para o cego é a luz. Para o faminto é o pão. Para o enfermo é a cura. Se o Neymar tem 100 fãs, eu sou um deles. Se o Neymar tem 10 fãs, eu sou um deles. Se o Neymar tem 1 fã, eu sou esse fã. Se o Neymar não tem fãs, eu não existo. ',
              textAlign: TextAlign.justify,
              style: TextStyle(
                fontFamily: "GothicA1",
                fontWeight: FontWeight.w400,
                fontSize: 16,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
