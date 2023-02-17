import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen());
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          "For Yousef",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                print("cast");
              },
              icon: Icon(
                Icons.cast,
                color: Colors.white,
              )),
          IconButton(
              onPressed: () {
                print("search");
              },
              icon: Icon(
                Icons.search,
                color: Colors.white,
              )),
          Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    image: NetworkImage(
                        'https://scontent-hbe1-1.xx.fbcdn.net/v/t1.6435-9/90176576_3438753076142125_7490368800391430144_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=174925&_nc_ohc=wjsH8btvJ1EAX_Xr14T&_nc_ht=scontent-hbe1-1.xx&oh=00_AfCNNJFT3hI2G0YpcfOAF3P4SuWRJAwzQPUk1x57M7_5eQ&oe=6411FAF6'),
                    fit: BoxFit.cover)),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // categories
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white54)),
                      child: Text(
                        "Series",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white54)),
                      child: Text(
                        "Films",
                        style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10),
                      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.white54)),
                      child: Row(
                        children: [
                          Text(
                            "Categories",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down,
                            size: 15,
                            color: Colors.white,
                          )
                        ],
                      ),
                    )
                  ],
                ),

                // banner
                Container(
                  height: 600,
                  margin: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.white38),
                      image: const DecorationImage(
                          image: NetworkImage(
                              "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQamrFccb2WvWTaMEI0Jt5n6gWIavlCP68MvuqYj8rWQDaDbOM4OEQPnXwa6sX_Wl70W32VPtltaW-ct1On4XJ9yefsf8mLF_vAwcCNiJ7hdEwng7C4C2IifNhVQK69ahS0V2mcRCVVk_J5_BbaQ0STCe.jpg?r=9bd"))),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(left: 10, bottom: 10),
                          padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.play_arrow,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Play Now",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Container(
                            margin: EdgeInsets.only(right: 10, bottom: 10),
                            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                            decoration: BoxDecoration(
                              color: Color(0xFF2D2D2D),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.add,
                                  color: Colors.white,
                                  size: 30,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  "My List",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )),
                    ],
                  ),
                ),

                // treding
                const Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                  ),
                  child: Text(
                    "Trending",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),

                // trending List
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQamrFccb2WvWTaMEI0Jt5n6gWIavlCP68MvuqYj8rWQDaDbOM4OEQPnXwa6sX_Wl70W32VPtltaW-ct1On4XJ9yefsf8mLF_vAwcCNiJ7hdEwng7C4C2IifNhVQK69ahS0V2mcRCVVk_J5_BbaQ0STCe.jpg?r=9bd"),
                                  fit: BoxFit.cover)),
                        );
                      }),
                ),

                // popular on nextflix
                const Padding(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  child: Text(
                    "Popular on Netflix",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                ),

                // popular List
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  height: 200,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 200,
                          width: 100,
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://dnm.nflximg.net/api/v6/2DuQlx0fM4wd1nzqm5BFBi6ILa8/AAAAQamrFccb2WvWTaMEI0Jt5n6gWIavlCP68MvuqYj8rWQDaDbOM4OEQPnXwa6sX_Wl70W32VPtltaW-ct1On4XJ9yefsf8mLF_vAwcCNiJ7hdEwng7C4C2IifNhVQK69ahS0V2mcRCVVk_J5_BbaQ0STCe.jpg?r=9bd"),
                                  fit: BoxFit.cover)),
                        );
                      }),
                ),
              ],
            ),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  print("item 1");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.home,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print("item 2");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.video_library_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "new & hot",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print("item 3");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.tag_faces,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Laughs",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  print("item 4");
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.download_for_offline_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Downloads",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
