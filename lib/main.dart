import 'package:flutter/material.dart';
import 'package:flutter_profile/pages/contact_page.dart';
import 'package:flutter_profile/pages/experience_page.dart';
import 'package:flutter_profile/pages/home_page.dart';
import 'package:flutter_profile/pages/portfolio_page.dart';
import 'package:flutter_profile/pages/team_page.dart';
import 'package:flutter_profile/utils/AppColors.dart';
import 'package:flutter_profile/utils/AppIcons.dart';
import 'package:flutter_profile/widgets/navigation_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

final GlobalKey<ScaffoldState> scaffoldkey = GlobalKey<ScaffoldState>();

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;
  int selectedMenuIndex = 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
    _tabController.addListener(() {
      setState(() {
        selectedMenuIndex = _tabController.index;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    double iconSize = 20;
    return Scaffold(
      key: scaffoldkey,
      backgroundColor: backgroundLight,
      body: Container(
        margin: const EdgeInsets.only(top: 30, left: 10),
        child: Row(
          children: [
            SizedBox(
              width: 50,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 20),
                    width: 45,
                    height: 45,
                    decoration: const BoxDecoration(shape: BoxShape.circle),
                    child: Image.asset(
                      "assets/images/avtar1.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  NavigationMenu(
                    navHome,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 0,
                    onClick: () {
                      _tabController.animateTo(0);
                    },
                  ),
                  NavigationMenu(
                    navTime,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 1,
                    onClick: () {
                      _tabController.animateTo(1);
                    },
                  ),
                  NavigationMenu(
                    navPortfolio,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 2,
                    onClick: () {
                      _tabController.animateTo(2);
                    },
                  ),
                  NavigationMenu(
                    navGroup,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 3,
                    onClick: () {
                      _tabController.animateTo(3);
                    },
                  ),
                  NavigationMenu(
                    navContact,
                    height: iconSize,
                    width: iconSize,
                    isSelected: selectedMenuIndex == 4,
                    onClick: () {
                      _tabController.animateTo(4);
                    },
                  ),
                ],
              ),
            ),
            Flexible(
                fit: FlexFit.tight,
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    HomePage(),
                    ExperiencePage(),
                    PortfolioPage(),
                    TeamPage(),
                    ContactPage(),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
