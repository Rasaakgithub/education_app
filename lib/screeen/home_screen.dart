import 'package:education_app/screeen/course_screen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List catnames = [
    "Categogy",
    'Classes',
    'Free course',
    'Bookstore',
    'Live course',
    'Leaderboard',
  ];

  List<Color> catColors = [
    Color(0xffffcf2f),
    Color(0xff6fe08d),
    Color(0xff61bdfd),
    Color(0xfffc7c7f),
    Color(0xfffcb84fb),
    Color(0xff78e667)
  ];

  List<Icon> catIcons = [
    const Icon(
      Icons.category,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.video_library,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.assignment,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.store,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.play_circle_fill,
      color: Colors.white,
      size: 30,
    ),
    Icon(
      Icons.emoji_events,
      color: Colors.white,
      size: 30,
    )
  ];

  List imglist = [
    'Flutter',
    'React Native',
    'Python',
    'C#',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: const BoxDecoration(
                color: Color(0xff674aef),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    bottomRight: Radius.circular(20))),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.dashboard,
                      size: 30,
                      color: Colors.white,
                    ),
                    Icon(
                      Icons.notifications,
                      size: 30,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    'Hi programmer',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        wordSpacing: 2,
                        color: Colors.white),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  alignment: Alignment.centerLeft,
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "search here ...",
                        hintStyle:
                            TextStyle(color: Colors.black.withOpacity(0.5)),
                        prefixIcon: Icon(
                          Icons.search,
                          size: 25,
                        )),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Column(
              children: [
                GridView.builder(
                  itemCount: catnames.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: 1.1),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: catColors[index], shape: BoxShape.circle),
                          child: Center(
                            child: catIcons[index],
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          catnames[index],
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: Colors.black.withOpacity(0.7)),
                        )
                      ],
                    );
                  },
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Courses',
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      'See all',
                      style: TextStyle(
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff674aef)),
                    )
                  ],
                ),
                SizedBox(height: 10),
                GridView.builder(
                  itemCount: imglist.length,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio:
                          (MediaQuery.of(context).size.height - 50 - 25) /
                              (4 * 240),
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  CourseScreen(imglist[index]),
                            ));
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0xfff5f3ff)),
                        child: Column(children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "images/${imglist[index]}.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            imglist[index],
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.w600,
                              color: Colors.black.withOpacity(0.6),
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            '44 Videos',
                            style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w500,
                                color: Colors.black.withOpacity(0.5)),
                          )
                        ]),
                      ),
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        iconSize: 32,
        selectedItemColor: Color(0xff674aef),
        selectedFontSize: 18,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.assignment), label: 'Courses'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite), label: 'Wishlists'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
        ],
      ),
    );
  }
}
