import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Sample',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(children: [
          Container(
            height: 48,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          Header(),
          Expanded(
            child: Container(
              width: double.infinity,
              height: 48,
              color: Color.fromARGB(255, 255, 255, 255),
              child: SingleChildScrollView(
                child: Column(children: [
                  SearchBox(),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  TopLocation(),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  NearLocations(),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  Suggestions(),
                  Divider(
                    color: const Color.fromARGB(51, 158, 158, 158),
                  ),
                  TopRated(),
                ]),
              ),
            ),
          ),
          IconMenu(),
          Container(
            height: 48,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
        ]),
      ),
    );
  }

  Widget Suggestions() => Container(
        child: Column(children: [
          TitleItem("Suggestions", "See All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/post06.jpeg", "Eyfel Tower",
                    "France", " 150\$ "),
                LocationItem("assets/images/post16.jpeg", "Big Ben",
                    "London, UK", " 200\$ "),
                LocationItem("assets/images/post07.jpeg", "Sentral Park",
                    "New york , USA", " 100\$ "),
                LocationItem(
                    "assets/images/post17.jpeg", "Oslo", "Norway", " 200\$ "),
              ],
            ),
          ),
        ]),
      );

  Widget TopRated() => Container(
        child: Column(children: [
          TitleItem("Top Rated", "See All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/post10.jpeg", "Burj Khalifa",
                    "Dubai", " 150\$ "),
                LocationItem("assets/images/post09.jpeg", "Galata Tower",
                    "Türkiye", " 200\$ "),
                LocationItem("assets/images/post08.webp", "Bermingham Castle",
                    "United Kingtom", " 100\$ "),
                LocationItem("assets/images/post07.jpeg", "Sentral Park", "USA",
                    " 200\$ "),
              ],
            ),
          ),
        ]),
      );
  Widget NearLocations() => Container(
        child: Column(children: [
          TitleItem("Near You", "See All"),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                LocationItem("assets/images/post14.jpeg", "Masjid Al Haram",
                    "Phlistane", " 150\$ "),
                LocationItem(
                    "assets/images/post13.jpeg", "Arizona", "USA", " 200\$ "),
                LocationItem("assets/images/post12.jpeg", "Miami Beach", "USA",
                    " 100\$ "),
                LocationItem("assets/images/post11.jpeg", "Camp Nou", "Spain",
                    " 200\$ "),
              ],
            ),
          ),
        ]),
      );

  Widget LocationItem(
          String photo, String title, String description, String price) =>
      Container(
        width: 175,
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(color: Color.fromARGB(18, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(photo, width: 220)),
            SizedBox(height: 5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(fontSize: 10),
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          size: 12,
                          color: Colors.grey,
                        ),
                        Text(
                          description,
                          style: TextStyle(color: Colors.grey, fontSize: 8),
                        ),
                      ],
                    ),
                  ],
                ),
                Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 128, 0),
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      price,
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    )),
              ],
            ),
          ],
        ),
      );

  Widget TopLocation() => Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TitleItem("Top Walkers", "See All"),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  StoryItem("assets/images/profile1.jpeg", "Frank T"),
                  StoryItem("assets/images/profile2.avif", "Peter B"),
                  StoryItem("assets/images/profile3.jpeg", "Cristina"),
                  StoryItem("assets/images/profile4.webp", "Walter"),
                  StoryItem("assets/images/profile5.jpeg", "Ricardo"),
                  StoryItem("assets/images/profile6.jpeg", "Sara"),
                  StoryItem("assets/images/profile7.jpeg", "Pablo"),
                  StoryItem("assets/images/profile8.webp", "Luisa"),
                  StoryItem("assets/images/profile9.jpeg", "Oscar"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget SearchBox() => Container(
        height: 50,
        margin: EdgeInsets.all(12.0),
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(51, 158, 158, 158)),
          borderRadius: BorderRadius.circular(25),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(
                  Icons.location_on,
                  color: Colors.grey,
                ),
                SizedBox(width: 5),
                Text(
                  "İstanbul , Beşiktaş",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Icon(
              Icons.tune,
              size: 17,
              color: const Color.fromRGBO(236, 125, 87, 1),
            ),
          ],
        ),
      );

  Widget StoryItem(String photo, String name) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(2),
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 241, 156, 101),
                Color.fromARGB(255, 233, 92, 70),
              ]),
              shape: BoxShape.circle,
            ),
            child: Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                radius: 32,
                backgroundImage: AssetImage(photo),
              ),
            ),
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style: TextStyle(
                fontSize: 22,
                color: Colors.black,
              )),
          Text(link,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      height: 70,
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Welcome, Furkan",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                )),
            Text("Explore Istanbul City",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 56, 56, 56),
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(20, 215, 212, 212),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(6.0),
              child: Icon(Icons.sunny, color: Colors.orange, size: 20),
            ),
            SizedBox(width: 5),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(20, 215, 212, 212),
                shape: BoxShape.circle,
              ),
              padding: const EdgeInsets.all(8.0),
              margin: const EdgeInsets.all(6.0),
              child: Icon(
                Icons.notifications,
                size: 20,
              ),
            ),
          ],
        ),
      ]),
    );
  }

  Widget IconMenu() {
    return Container(
      height: 70,
      width: double.infinity,
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromARGB(8, 158, 158, 158), width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomMenuItem("Home", Icons.home, true),
          BottomMenuItem("Moments", Icons.groups, false),
          HighligtedItem("Book", Icons.maps_ugc),
          BottomMenuItem("Chat", Icons.forum, false),
          BottomMenuItem("Profile", Icons.person, false),
        ],
      ),
    );
  }

  Widget BottomMenuItem(String title, IconData icon, bool active) {
    var myColor = const Color.fromRGBO(174, 174, 178, 1);

    if (active) {
      myColor = const Color.fromRGBO(43, 43, 43, 1);
    } else {}

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: myColor,
            size: 28,
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(color: myColor, fontSize: 10),
          ),
        ],
      ),
    );
  }

  Widget HighligtedItem(String title, IconData icon) {
    var myColor = const Color.fromRGBO(236, 125, 87, 1);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Icon(
            icon,
            color: myColor,
            size: 35,
          ),
          SizedBox(height: 2),
          Text(
            title,
            style: TextStyle(color: myColor, fontSize: 10),
          ),
        ],
      ),
    );
  }
}
