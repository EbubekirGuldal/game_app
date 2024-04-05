import 'package:flutter/material.dart';

class CategorySection extends StatelessWidget {
  CategorySection({super.key});

  final categories = [
    {
      "icon": Icons.track_changes_outlined,
      "color": const Color(0xFF605CF4),
      "title": "Arcade",
    },
    {
      "icon": Icons.sports_motorsports_outlined,
      "color": const Color(0xFFFC77A6),
      "title": "Arcade",
    },
    {
      "icon": Icons.casino_outlined,
      "color": const Color(0xFF4391FF),
      "title": "Arcade",
    },
    {
      "icon": Icons.sports_esports,
      "color": const Color(0xFF7182f2),
      "title": "Arcade",
    },
  ];

  @override
  Widget build(context) {
    return Container(
      height: 500,
      decoration: const BoxDecoration(
        color: Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Container(
            height: 140,
            color: Colors.green,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: ((context, index) => Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: categories[index]["color"] as Color),
                          child: Icon(
                            categories[index]["icon"] as IconData,
                            color: Colors.white,
                            size: 40,
                          ),
                        ),
                      ],
                    )),
                separatorBuilder: ((context, index) =>
                    const SizedBox(width: 33)),
                itemCount: categories.length),
          ),
        ],
      ),
    );
  }
}
