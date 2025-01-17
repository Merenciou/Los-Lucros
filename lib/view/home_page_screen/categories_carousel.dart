import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesCarousel extends StatefulWidget {
  const CategoriesCarousel({super.key});

  @override
  State<CategoriesCarousel> createState() => _CategoriesCarouselState();
}

class _CategoriesCarouselState extends State<CategoriesCarousel> {
  List<String> categoriesImgs = [
    'geek',
    'nerd',
    'skate',
    'metal',
    'nerd',
  ];

  List<String> categoriesTitle = [
    'Geek',
    'Nerd',
    'Skate',
    'Metal',
    'Nerd',
  ];

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
      child: SizedBox(
        width: deviceSize.width,
        height: 110,
        child: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              width: 10,
            );
          },
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: 80,
              height: 80,
              child: Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      color: const Color(0xFFF26B0F),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    child: Image.asset(
                      'assets/images/wear/${categoriesImgs[index]}.png',
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Text(
                      categoriesTitle[index],
                      style: GoogleFonts.urbanist(fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
