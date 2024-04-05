import 'package:flutter/material.dart';
import 'package:game_app/pages/home/widgets/category.dart';
import 'package:game_app/pages/home/widgets/header.dart';
import 'package:game_app/pages/home/widgets/search.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF5F67EA),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                "assets/images/bg_liquid.png",
                width: 200,
              ),
            ),
            Positioned(
              right: 0,
              top: 200,
              child: Transform(
                transform: Matrix4.identity()..rotateZ(20),
                origin: const Offset(150, 100),
                child: Image.asset(
                  "assets/images/bg_liquid.png",
                  width: 200,
                ),
              ),
            ),
            Column(
              children: [
                const HeaderSection(),
                const SearchSection(),
                CategorySection(),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(),
    );
  }

  // ignore: non_constant_identifier_names
  Widget NavigationBar() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(
              label: "Home",
              icon: Icon(
                Icons.home,
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
              label: "Application",
              icon: Icon(
                Icons.more_horiz,
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
              label: "Film",
              icon: Icon(
                Icons.play_arrow_rounded,
                size: 40,
              ),
            ),
            BottomNavigationBarItem(
              label: "Book",
              icon: Icon(
                Icons.menu_book,
                size: 40,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
