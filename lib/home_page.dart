import 'dart:math' as math;

import 'package:cinema_ticket_app/constants.dart';
import 'package:cinema_ticket_app/detail_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final PageController _pageController = PageController(
    viewportFraction: 0.7,
  );

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: kColor1,
      bottomNavigationBar: CustomBottomBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 32.0,
              vertical: 16.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Nikolaj 👋',
                          style: TextStyle(
                            color: kColor4,
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: 4.0),
                        Text(
                          'Book your favorite movie',
                          style: TextStyle(
                            color: kColor4,
                            fontWeight: FontWeight.w100,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    ClipOval(
                      child: Image.asset(
                        'assets/profile.png',
                        width: 44,
                        height: 44,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  tileColor: kColor2,
                  minLeadingWidth: 20,
                  leading: Icon(
                    Icons.search_rounded,
                    color: kMutedTextColor,
                  ),
                  title: Text(
                    'Search movie',
                    style: TextStyle(
                      color: kMutedTextColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                  trailing: Icon(
                    Icons.mic_rounded,
                    color: kMutedTextColor,
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'Movie Categories',
                      style: TextStyle(
                        color: kColor4,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: kColor6,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                SizedBox(
                  height: 140,
                  child: GridView.count(
                    scrollDirection: Axis.horizontal,
                    crossAxisCount: 1,
                    children: [
                      MovieCategoryTile(
                        category: 'Comedy',
                        categoryEmoji: '🤣',
                      ),
                      MovieCategoryTile(
                        category: 'Horror',
                        categoryEmoji: '😨',
                      ),
                      MovieCategoryTile(
                        category: 'Romance',
                        categoryEmoji: '😍',
                      ),
                      MovieCategoryTile(
                        category: 'Thriller',
                        categoryEmoji: '😲',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
                Row(
                  children: [
                    Text(
                      'Top Picks',
                      style: TextStyle(
                        color: kColor4,
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Spacer(),
                    Text(
                      'See All',
                      style: TextStyle(
                        color: kColor6,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 32),
                SizedBox(
                  height: 270,
                  child: PageView(
                    controller: _pageController,
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (_pageController.page != 0)
                            _pageController.animateToPage(
                              0,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );

                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (context) {
                                return DetailPage(
                                  movieName: 'Fight Club',
                                  photo: 'assets/fight-club-poster.jpg',
                                  releaseYear: '1999',
                                  category: 'Action',
                                  playtime: '2h 31m',
                                  rating: 4,
                                  description:
                                      'Fight Club is a 1999 American film directed by David Fincher and starring Brad Pitt, Edward Norton, and Helena Bonham Carter. It is based on the 1996 novel of the same name by Chuck Palahniuk. Norton plays the unnamed narrator, who is discontented with his white-collar job. He forms a "fight club" with soap salesman Tyler Durden (Pitt), and becomes embroiled in a relationship with a destitute woman, Marla Singer (Bonham Carter).',
                                );
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'assets/fight-club-poster.jpg',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Image.asset(
                                  'assets/fight-club-poster.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_pageController.page != 1)
                            _pageController.animateToPage(
                              1,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );

                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (context) {
                                return DetailPage(
                                  movieName: 'Pulp Fiction',
                                  photo: 'assets/pulp-fiction-poster.png',
                                  releaseYear: '1994',
                                  category: 'Drama',
                                  playtime: '2h 58m',
                                  rating: 5,
                                  description:
                                      'Pulp Fiction is a 1994 American neo-noir black comedy crime film written and directed by Quentin Tarantino, who conceived it with Roger Avary.[4] Starring John Travolta, Samuel L. Jackson, Bruce Willis, Tim Roth, Ving Rhames, and Uma Thurman, it tells several stories of criminal Los Angeles. The title refers to the pulp magazines and hardboiled crime novels popular during the mid-20th century, known for their graphic violence and punchy dialogue.',
                                );
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'assets/pulp-fiction-poster.png',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Image.asset(
                                  'assets/pulp-fiction-poster.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          if (_pageController.page != 2)
                            _pageController.animateToPage(
                              2,
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );

                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder: (context) {
                                return DetailPage(
                                  movieName: 'The Irishman',
                                  photo: 'assets/the-irishman-poster.jpg',
                                  releaseYear: '2019',
                                  category: 'Drama',
                                  playtime: '3h 30m',
                                  rating: 3,
                                  description:
                                      'The Irishman (titled onscreen as I Heard You Paint Houses) is a 2019 American epic crime film directed and produced by Martin Scorsese and written by Steven Zaillian, based on the 2004 nonfiction book I Heard You Paint Houses by Charles Brandt. It stars Robert De Niro, Al Pacino, and Joe Pesci, with Ray Romano, Bobby Cannavale, Anna Paquin, Stephen Graham, and Harvey Keitel in supporting roles. The film follows Frank Sheeran (De Niro), a truck driver who becomes a hitman involved with mobster Russell Bufalino (Pesci) and his crime family, including his time working for the powerful Teamster Jimmy Hoffa (Pacino). The film marks the ninth collaboration between director Scorsese and De Niro.',
                                );
                              },
                            ),
                          );
                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Hero(
                              tag: 'assets/the-irishman-poster.jpg',
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(32),
                                child: Image.asset(
                                  'assets/the-irishman-poster.jpg',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 32),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  late int _current;
  late List<Widget> _items;

  @override
  void initState() {
    super.initState();

    _current = 0;

    _items = <Widget>[
      Icon(
        Icons.home_outlined,
        color: Colors.white,
      ),
      Icon(
        Icons.movie_outlined,
        color: kMutedTextColor,
      ),
      Icon(
        Icons.notifications_outlined,
        color: kMutedTextColor,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        bottom: 24,
        left: 4,
        right: 4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _items,
      ),
    );
  }
}

class MovieCategoryTile extends StatelessWidget {
  final String category;
  final String categoryEmoji;

  const MovieCategoryTile({
    Key? key,
    required this.category,
    required this.categoryEmoji,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.only(
              top: 32.0,
              bottom: 16.0,
            ),
            child: Column(
              children: [
                Text(
                  categoryEmoji,
                  style: TextStyle(fontSize: 28),
                ),
                Spacer(),
                Text(
                  category,
                  style: TextStyle(color: Colors.white70),
                ),
              ],
            ),
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: kColor2,
        ),
      ),
    );
  }
}

class MoviePosterCaroussel extends StatefulWidget {
  const MoviePosterCaroussel({Key? key}) : super(key: key);

  @override
  _MoviePosterCarousselState createState() => _MoviePosterCarousselState();
}

class _MoviePosterCarousselState extends State<MoviePosterCaroussel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Transform.rotate(
          angle: math.pi * 0.05,
          child: Transform.translate(
            offset: const Offset(100, 50),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                'assets/pulp-fiction-poster.png',
                fit: BoxFit.cover,
                width: 180,
                height: 180,
              ),
            ),
          ),
        ),
        Transform.rotate(
          angle: math.pi * 0.025,
          child: Transform.translate(
            offset: const Offset(50, 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                'assets/the-irishman-poster.jpg',
                fit: BoxFit.cover,
                width: 180,
                height: 215,
              ),
            ),
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(32),
          child: Image.asset(
            'assets/fight-club-poster.jpg',
            fit: BoxFit.cover,
            width: 180,
            height: 250,
          ),
        ),
      ],
    );
  }
}
