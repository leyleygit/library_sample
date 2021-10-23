import 'package:flutter/material.dart';
import 'package:library_sample/pages/homePage.dart';

import 'package:motion_tab_bar_v2/motion-tab-bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      initialIndex: 0,
      length: 3,
      vsync: this,
    );
  }

  @override
  void dispose() {
    super.dispose();
    _tabController!.dispose();
  }
  List<Color> tests =[Color(0xff44578C),Color(0xffEF6986),Color(0xffF0AC2A),];
  int _selectedIconIndex = 0;

  @override
  Widget build(BuildContext context) {
    //Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      bottomNavigationBar: MotionTabBar(

          initialSelectedTab: "Home",
          labels: const ["Home", "MyBooks", "read"],
          
          icons: const [Icons.gite_rounded, Icons.menu_book_rounded, Icons.play_lesson_rounded],
          
          // optional badges, length must be same with labels
          // badges: [
          //   // Default Motion Badge Widget
          //   const MotionBadgeWidget(
          //     text: '99+',
          //     textColor: Colors.white, // optional, default to Colors.white
          //     color: Colors.red, // optional, default to Colors.red
          //     size: 18, // optional, default to 18
          //   ),

          //   // custom badge Widget
          //   Container(
          //     color: Colors.black,
          //     padding: const EdgeInsets.all(2),
          //     child: const Text(
          //       '48',
          //       style: TextStyle(
          //         fontSize: 14,
          //         color: Colors.white,
          //       ),
          //     ),
          //   ),

          //   null,

          //   const MotionBadgeWidget(
          //     isIndicator: true,
          //     color: Colors.red, // optional, default to Colors.red
          //     size: 5, // optional, default to 5,
          //     show: true, // true / false
          //   ),
          // ],
          tabSize: 50,
          tabBarHeight: 50,
          textStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          tabIconColor: Colors.white,
          tabIconSize: 28.0,
          tabIconSelectedSize: 26.0,
          tabSelectedColor: Colors.white,
          tabIconSelectedColor: tests[_selectedIconIndex],
          tabBarColor:  tests[_selectedIconIndex],
          onTabItemSelected: (int value) {
            setState(() {
              _tabController!.index = value;
              _selectedIconIndex = value;
            });
          }),
      body: TabBarView(
        physics:
            NeverScrollableScrollPhysics(), // swipe navigation handling is not supported
        controller: _tabController,
        // ignore: prefer_const_literals_to_create_immutables
        children: <Widget>[
         HomePage(),
          const Center(
            child: Text("My books"),
          ),
          const Center(
            child: Text("Settings"),
          ),
        ],
      ),
    );
  }
}
