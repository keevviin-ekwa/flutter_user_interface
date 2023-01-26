import 'dart:async';

import 'package:app_design/src/widgets/category_button.dart';
import 'package:app_design/src/widgets/product_tile.dart';
import 'package:app_design/src/widgets/search_bar.dart';
import 'package:app_design/src/widgets/slide_article.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 10) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(_currentPage,
          duration: Duration(milliseconds: 300), curve: Curves.easeIn);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width * .6,
          child: Drawer(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.zero,
                      width: MediaQuery.of(context).size.width * .6,
                      height: 180,
                      color: const Color(0xFFEEEEEE),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(15),
                                  child: const FaIcon(
                                    FontAwesomeIcons.user,
                                    color: Colors.blue,
                                  ),
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          style: BorderStyle.solid,
                                          color: Colors.blue),
                                      shape: BoxShape.circle),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                              child: Column(
                            children: [
                              DropdownButton<String>(
                                  value: null,
                                  items: const [
                                    DropdownMenuItem(
                                        child: Text(
                                      "ekwabayard@gmail.com",
                                      style: TextStyle(fontSize: 12),
                                    ))
                                  ],
                                  onChanged: (item) {})
                            ],
                          ))
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    ListTile(
                      title: Text("Profile"),
                      leading: FaIcon(FontAwesomeIcons.userCircle),
                    ),
                    ListTile(
                      title: Text("Paramètres"),
                      leading: Icon(Icons.settings),
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ListTile(
                        title: Text("Deconnexion",
                            style: GoogleFonts.carterOne(
                                fontWeight: FontWeight.bold)),
                        leading: const FaIcon(FontAwesomeIcons.signOutAlt),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[700],
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              label: ""),
          BottomNavigationBarItem(
              backgroundColor: Colors.white,
              icon: FaIcon(
                FontAwesomeIcons.userAlt,
                color: Colors.white,
              ),
              label: ""),
        ],
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              icon: const Icon(
                Icons.bento,
                color: Colors.black,
              ));
        }),
        actions: [
          GestureDetector(
            onTap: () {
              showDialog(
                  context: this.context,
                  builder: (context) => AlertDialog(
                        contentPadding: EdgeInsets.zero,
                        content: Container(
                          width: MediaQuery.of(context).size.width * .9,
                          height: 300,
                          color: Colors.green,
                        ),
                      ));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 8),
              child: CircleAvatar(
                backgroundColor: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      "DECOUVRER",
                      style: GoogleFonts.luckiestGuy(),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("votre MEILLEUR MOBILIER",
                        style: GoogleFonts.luckiestGuy())
                  ],
                ),
              ),
              SearchBar(),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 200,
                child: PageView.builder(
                  controller: _pageController,
                  physics: const PageScrollPhysics(),
                  //padding: EdgeInsets.all(8),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SlideItem(
                    child: index,
                  ),
                  itemCount: 10,
                ),
              ),
              SizedBox(
                height: 100,
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.,
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.0, left: 8),
                      child: Text(
                        "Category",
                        style: GoogleFonts.luckiestGuy(),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Expanded(
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 15,
                          itemBuilder: (context, index) =>
                              CategoryButton(title: "Meubles ")),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
            ]),
          ),
          SliverGrid.count(
            crossAxisCount: 2,
            children: List.generate(6, (index) => Product()),
          )
        ],
      ),
    );
  }
}
