import 'package:flutter/material.dart';
import 'package:icon_forest/amazingneoicons.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<IconData> icon = [Icons.more_vert_outlined, Icons.search, Icons.menu];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          toolbarHeight: 50,
          backgroundColor: Colors.black,
          title: SizedBox(
            height: 40,
            width: 300,
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white30,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  hintText: 'Search Apps & Games',
                  hintStyle: TextStyle(color: Colors.white),
                  suffixIcon: Icon(
                    Icons.mic,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Icon(
                Icons.notifications_none_rounded,
                size: 30,
                color: Colors.white,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                child: Text('S',
                    style: TextStyle(fontSize: 15, color: Colors.white)),
                backgroundColor: Colors.blue,
                radius: 15,
              ),
            )
          ],
          bottom: TabBar(
              dividerColor: Colors.white30,
              indicatorWeight: 1,
              indicatorColor: Colors.blue,
              tabs: [
                Text(
                  'For you',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Top charts',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Children',
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  'Categories',
                  style: TextStyle(color: Colors.white),
                ),
              ]),
        ),
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 200,
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Container(
                        height: 200,
                        width: 200,
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 25),
              child: Row(
                children: [
                  Text(
                    'Sponsored',
                    style: TextStyle(color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 2,
                    ),
                  ),
                  Text(
                    ' Suggested for You',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 170),
                    child: Icon(
                      Icons.more_vert_outlined,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                          color: Colors.white30,
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    title: Text(
                      'Candy Crush Saga',
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'puzzle',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2,
                              ),
                            ),
                            Text(
                              ' Match 3',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2,
                              ),
                            ),
                            Text(
                              ' Casual',
                              style: TextStyle(color: Colors.white),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 2,
                              ),
                            ),
                            Text(
                              ' Offline',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                    trailing: Icon(icon[index]),
                  );
                },
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items:[ BottomNavigationBarItem(icon: Icon(Icons.games_outlined),
        label: 'Games'
        ),
        BottomNavigationBarItem(icon: Icon(Icons.apps_outlined),
        label: 'Apps'),
        BottomNavigationBarItem(icon: Icon(Icons.label_outline),
        label: 'Offers'),
        BottomNavigationBarItem(icon: Icon(Icons.book_outlined))
        ],),
      ),
    );
  }
}
