import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Youtube Music Clone',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          body: Column(
            children: [
              Container(
                //ÜST MENü
                height: 48,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromRGBO(62, 36, 17, 2),
                      const Color.fromRGBO(48, 14, 32, 2),
                    ],
                  ),
                ),
              ),
              Container(
                //ÜST MENÜ
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromRGBO(62, 36, 17, 2),
                      const Color.fromRGBO(48, 14, 32, 2),
                    ],
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Image.asset(
                                    width: 30, "assets/images/logo.png"),
                              ),
                              SizedBox(width: 3),
                              Text("Music",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold)),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.podcasts,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              Icon(
                                Icons.search,
                                color: Colors.white,
                              ),
                              SizedBox(width: 10),
                              CircleAvatar(
                                radius: 15,
                                backgroundImage:
                                    AssetImage("assets/images/profile.jpeg"),
                              ),
                            ],
                          ),
                        ]),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CategoryItem("Energy"),
                          CategoryItem("Workout"),
                          CategoryItem("Feel good"),
                          CategoryItem("Relaxation"),
                          CategoryItem("Rock"),
                          CategoryItem("Pop"),
                          CategoryItem("Jazz"),
                          CategoryItem("Hip Hop"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                //BODY
                child: Container(
                  padding:
                      EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 10),
                  width: double.infinity,
                  color: Colors.black,
                  child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "START RADİO FROM A SONG",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Quick Picks",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 3, left: 9, right: 9, bottom: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                            ],
                          ),
                          song("assets/images/p1.jpeg", "Dance Monkey", "Sia"),
                          song("assets/images/p2.jpeg", "Faded", "Alan Walker"),
                          song("assets/images/p3.jpeg", "Cradles", "Sub Urban"),
                          song("assets/images/p4.jpeg", "Old Town Road",
                              "Lil Nas X"),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Forgostten Favorites",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 3, left: 9, right: 9, bottom: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                MusicRow2(
                                    "assets/images/p6.jpeg", "Lalala", "Y2K"),
                                MusicRow2("assets/images/p1.jpeg",
                                    "Dance Monkey", "Sia"),
                                MusicRow2("assets/images/p3.jpeg", "Cradles",
                                    "Sub Urban"),
                                MusicRow2("assets/images/p4.jpeg",
                                    "Old Town Road", "Lil Nas X"),
                                MusicRow2(
                                    "assets/images/p6.jpeg", "Lalala", "Y2K"),
                                MusicRow2(
                                    "assets/images/p6.jpeg", "Lalala", "Y2K"),
                                MusicRow2("assets/images/p1.jpeg",
                                    "Dance Monkey", "Sia"),
                                MusicRow2("assets/images/p3.jpeg", "Cradles",
                                    "Sub Urban"),
                                MusicRow2("assets/images/p4.jpeg",
                                    "Old Town Road", "Lil Nas X"),
                                MusicRow2(
                                    "assets/images/p6.jpeg", "Lalala", "Y2K"),
                              ],
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Recommended Music ",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 28,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Videos",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(
                                    top: 3, left: 9, right: 9, bottom: 3),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                    color: Colors.white,
                                  ),
                                  color: Colors.white10,
                                ),
                                child: Text(
                                  "Play all",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 9),
                                ),
                              ),
                            ],
                          ),
                          SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              children: [
                                Video("assets/images/post4.jpg", "Cradles",
                                    "Sub Urban - 1.1M"),
                                Video("assets/images/p2.jpeg", "Old town road",
                                    "Lil Nas X - 2.5M"),
                                Video("assets/images/p9.jpeg", "Rock",
                                    "Quin - 5.9M"),
                                Video("assets/images/p2.jpeg", "Cradles",
                                    "Sub Urban - 4.2M"),
                              ],
                            ),
                          ),
                        ]),
                  ),
                ),
              ),
              Container(
                //ALT MENÜ
                padding: EdgeInsets.all(8),
                height: 60,
                width: double.infinity,
                color: Color.fromRGBO(33, 33, 33, 1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Icon(Icons.home, color: Colors.white),
                        Text(
                          "Home",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.play_circle_outline, color: Colors.white),
                        Text(
                          "Samples",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.explore_outlined, color: Colors.white),
                        Text(
                          "Explore",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.subscriptions_outlined, color: Colors.white),
                        Text(
                          "Library",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(Icons.slideshow, color: Colors.white),
                        Text(
                          "Upgrade",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                //ALT MENÜ
                height: 16,
                width: double.infinity,
                color: Color.fromRGBO(33, 33, 33, 1),
              ),
            ],
          ),
        ));
  }

  SingleChildScrollView Video(String photo, String song_name, String singer) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(right: 20),
                child: Image.asset(
                  photo,
                  width: 230,
                  height: 150,
                ),
              ),
              SizedBox(height: 7),
              Text(
                song_name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                singer,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Padding MusicRow2(String photo, String song_name, String singer) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, right: 10, bottom: 8, left: 10),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(
                photo,
                width: 170,
              ),
              SizedBox(height: 7),
              Text(
                song_name,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                singer,
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget song(String photo, String song_name, String singer) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(photo),
                width: 60,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      song_name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      singer,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Icon(Icons.more_vert, color: Colors.white),
        ],
      ),
    );
  }

  Container CategoryItem(String tag) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 6, bottom: 6),
      margin: const EdgeInsets.only(left: 4, right: 3, top: 6, bottom: 10),
      decoration: BoxDecoration(
          color: Colors.white10,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white12)),
      child: Text(
        tag,
        style: TextStyle(
            color: Colors.white, fontSize: 17, fontWeight: FontWeight.normal),
      ),
    );
  }
}
