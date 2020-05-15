import 'package:flutter/material.dart';

class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  PageController _pageController;
  int _currentIndex = 0;

  List<Map> _content = [
    {
      'title': 'Dedicação',
      'subtitle': 'É nunca desistir dos seus sonhos, pois sabe do que é capaz.',
      'img': 'assets/img/books.jpeg',
      'width': 400.0,
      'height': 400.0,
    },
    {
      'title': 'Estudos',
      'subtitle':
          'Sabemos o quanto se formar é importante, por isso compartilhe nosso app com seus amigos, ajude para ser ajudado!',
      'img': 'assets/img/study_group.png',
      'width': 350.0,
      'height': 380.0,
    },
    {
      'title': 'Está pronto?',
      'subtitle':
          'Com tudo isso em mente, é hora de praticar. Vamos ao que interessa!',
      'img': 'assets/img/success.jpg',
      'width': 450.0,
      'height': 450.0,
    }
  ];

  Widget _buildCircles() {
    return Container(
      alignment: Alignment.center,
      width: MediaQuery.of(context).size.width,
      height: 30,
      child: ListView.separated(
        shrinkWrap: true,
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return CircleAvatar(
            radius: _currentIndex == index ? 7 : 5,
            backgroundColor: _currentIndex == index
                ? Theme.of(context).splashColor
                : Colors.black12,
          );
        },
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 10),
        itemCount: _content.length,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: _currentIndex,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.3,
              child: PageView.builder(
                controller: _pageController,
                itemCount: _content.length,
                onPageChanged: (int index) {
                  setState(() {
                    _currentIndex = index;
                  });
                },
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(vertical: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _content[index]['title'],
                          style: Theme.of(context).textTheme.headline1,
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Container(
                          width: MediaQuery.of(context).size.width / 1.5,
                          child: Text(
                            _content[index]['subtitle'],
                            style: Theme.of(context).textTheme.subtitle1,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Spacer(),
                        Image.asset(
                          _content[index]['img'],
                          width: _content[index]['width'],
                          height: _content[index]['height'],
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Spacer(),
            _buildCircles(),
          ],
        ),
      ),
    );
  }
}
