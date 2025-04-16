import 'package:awesome_bottom_bar/awesome_bottom_bar.dart';
import 'package:awesome_bottom_bar/widgets/inspired/inspired.dart';
import 'package:fitness_client_project/features/Sandow/veiws/sandow_score_detail.dart';
import 'package:fitness_client_project/features/Sandow/veiws/sandow_score_history.dart';
import 'package:fitness_client_project/features/homepage/veiws/homepage.dart';
import 'package:fitness_client_project/features/homepage/veiws/sandow_score.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class NavPage extends StatefulWidget {
  const NavPage({super.key});

  @override
  State<NavPage> createState() => _NavPageState();
}

class _NavPageState extends State<NavPage> {
  int currentIndex = 0;
  List<Widget> pages = [
    // SandowScoreHistory(),
    HomePage(),
    SandowScore(),
    SandowScoreHistory(),
    SandowScoreDetail(),
    Scaffold(
      body: Center(
        child: Text("Profile"),
      ),
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback(
      (timeStamp) {
        setState(() {});
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    List<TabItem> items = [
      TabItem(
        icon: Icons.home_rounded,
      ),
      TabItem(

          // icon: ImageIcon(Image.asset("coffee.png").image),
          icon: Icons.fitness_center_rounded
          // title: 'Shop',
          ),
      TabItem(

          // icon: ImageIcon(Image.asset("coffee.png").image),
          icon: Icons.add
          // title: 'Shop',
          ),
      TabItem(

          // icon: ImageIcon(Image.asset("coffee.png").image),
          icon: Icons.restaurant_rounded
          // title: 'Shop',
          ),
      TabItem(

          // icon: ImageIcon(Image.asset("coffee.png").image),
          icon: Icons.person_rounded
          // title: 'Shop',
          ),
      // TabItem(

      //     // icon: ImageIcon(Image.asset("coffee.png").image),
      //     icon: Icons.dynamic_form_sharp
      //     // title: 'Shop',
      //     ),
    ];

    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Home Page'),
      // ),
      body: Stack(children: [
        pages[currentIndex],
        // Navigator(
        //   key: bottomNavKey,
        //   onGenerateRoute: (settings) {
        //     return MaterialPageRoute(
        //       settings: settings,
        //       builder: (context) => Container(child: const HomeContent()),
        //     );
        //   },
        // ),
        Padding(
          padding: const EdgeInsets.only(bottom: 0.0),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              child: BottomBarInspiredOutside(
                items: items,
                // backgroundColor: Colors.transparent,
                backgroundColor: Colors.white,
                // .faintGreen,

                color: Colors.grey,
                colorSelected: Colors.blue,
                indexSelected: currentIndex,
                onTap: (index) {
                  currentIndex = index;

                  setState(() {});
                },
                fixed: true,
                fixedIndex: 2,
                chipStyle: const ChipStyle(
                  convexBridge: false,
                  drawHexagon: true,
                  isHexagon: false,
                  // notchSmoothness: NotchSmoothness.sharpEdge,
                  background: Colors.orange,
                ),
                itemStyle: ItemStyle.hexagon,
                // animated: true, borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
      ]),

      // pages[currentIndex],
      // bottomNavigationBar: Align(
      //   alignment: Alignment.bottomCenter,
      //   child: Container(
      //     child: BottomBarInspiredOutside(
      //       items: items,
      //       // backgroundColor: Colors.transparent,
      //       backgroundColor: Colors.white,
      //       // .faintGreen,

      //       color: Colors.grey,
      //       colorSelected: Colors.orange,
      //       indexSelected: currentIndex,
      //       onTap: (index) {
      //         print("asasasas${currentIndex}");
      //         currentIndex = index;
      //         print("asasasas${currentIndex}");
      //         setState(() {});
      //       },
      //       fixed: true,
      //       fixedIndex: 2,
      //       chipStyle: const ChipStyle(
      //           convexBridge: false,
      //           drawHexagon: true,
      //           isHexagon: false,
      //           background: Colors.white,
      //           color: Colors.red),
      //       itemStyle: ItemStyle.hexagon,
      //       animated: true,
      //     ),
      //   ),
      // ),
    );
  }
}
