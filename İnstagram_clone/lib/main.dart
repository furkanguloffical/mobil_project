import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'İnstagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Column(children: [
          Container(
            //ÜST MENÜ
            width: double.infinity,
            height: 48,
          ),
          Container(
            //ÜST MENÜ
            width: double.infinity,
            height: 45,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Image.asset("assets/image/logo2.png"),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.add_circle_outline,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 8.0, left: 8.0, bottom: 8, right: 20),
                      child: Icon(
                        Icons.send_outlined,
                        color: Colors.black87,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Expanded(
              //HİKAYELER, POSTLAR VE YORUMLAR
              child: Container(
            child: SingleChildScrollView(
              child: Column(children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      //HİKAYE
                      Storybox("assets/image/p1.webp", "Frank"),
                      Storybox("assets/image/p2.jpeg", "Peter"),
                      Storybox("assets/image/p3.avif", "Erik"),
                      Storybox("assets/image/p4.jpeg", "Dennis"),
                      Storybox("assets/image/p2.jpeg", "Daniel"),
                      Storybox("assets/image/p1.webp", "Viktor"),
                      Storybox("assets/image/p1.webp", "Walter"),
                      Storybox("assets/image/p2.jpeg", "William"),
                      Storybox("assets/image/p3.avif", "Leo"),
                      Storybox("assets/image/p4.jpeg", "Rodrigo"),
                      Storybox("assets/image/p2.jpeg", "Vladimir"),
                    ],
                  ),
                ),
                PostItem("assets/image/post5.jpg", "Frankoffical", "İstanbul",
                    "assets/image/p1.webp", "enesablak", "Nice photo"),
                PostItem(
                    "assets/image/post2.jpg",
                    "enesablak",
                    "Syria",
                    "assets/image/p2.jpeg",
                    "enesablak",
                    "Güzel bir fotoğraf maşallah subhanallah"),
                PostItem(
                    "assets/image/post3.jpg",
                    "mehmetayıbogan",
                    "Kastamonu",
                    "assets/image/p3.avif",
                    "enesablak",
                    "Güzel bir fotoğraf"),
                PostItem("assets/image/post4.jpg", "bilalrussia", "Uzbekistan",
                    "assets/image/p4.jpeg", "enesablak", "Güzel bir fotoğraf,"),
                PostItem("assets/image/post5.jpg", "hüseyineltemimi", "Syria",
                    "assets/image/p1.webp", "enesablak", "Güzel bir fotoğraf"),
              ]),
            ),
          )),
          Container(
            // ALT MENü
            decoration: BoxDecoration(
              border: Border(
                top: BorderSide(width: 0.5, color: Colors.black26),
              ),
            ),
            width: double.infinity,
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.home, size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.search, size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.smart_display_outlined,
                        size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.favorite_outline,
                        size: 35, color: Colors.black87),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Icon(Icons.person_2_outlined,
                        size: 35, color: Colors.black87),
                  ),
                ]),
          ),
          Container(
            // ALT MENÜ
            width: double.infinity,
            height: 15,
          ),
        ]),
      ),
    );
  }

// POST VE YORUM İŞLEMLERİ WİDGET
  Container PostItem(String post, String kullanici_adi, String sehir,
          String avatar, String yorum_yapan, String yorum) =>
      Container(
        child: Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage(avatar),
                        radius: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            kullanici_adi,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            sehir,
                            style: TextStyle(
                                fontSize: 10, fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            Image.asset(post),
            LikeCommentBox(),
            CommentBox(yorum_yapan, yorum),
          ]),
        ),
      );

//POST BUTONLARI WİDGET
  Padding LikeCommentBox() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.black87,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.comment_outlined,
                color: Colors.black87,
                size: 30,
              ),
              SizedBox(
                width: 25,
              ),
              Icon(
                Icons.send_outlined,
                color: Colors.black87,
                size: 30,
              ),
            ],
          ),
          Icon(
            Icons.bookmark_border_outlined,
            color: Colors.black87,
            size: 30,
          ),
        ],
      ),
    );
  }

// YORUMLAR WİDGET
  Padding CommentBox(String name, String comment) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: RichText(
            maxLines: 3,
            text: TextSpan(
              children: [
                TextSpan(
                  text: name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                TextSpan(text: " "),
                TextSpan(
                  text: comment,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.normal,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}

//HİKAYELER WİDGET
Widget Storybox(String avatar, String name) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
    child: Column(
      children: [
        Container(
          padding: EdgeInsets.all(3),
          decoration: BoxDecoration(
            color: Colors.yellow,
            gradient: LinearGradient(colors: [
              Color.fromRGBO(214, 71, 103, 1),
              Color.fromRGBO(241, 166, 117, 1),
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
              backgroundImage: AssetImage(avatar),
              radius: 38,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          name,
          style: TextStyle(fontSize: 11),
        ),
      ],
    ),
  );
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
