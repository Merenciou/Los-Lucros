import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DailyOffers extends StatefulWidget {
  const DailyOffers({super.key});

  @override
  State<DailyOffers> createState() => _DailyOffersState();
}

class _DailyOffersState extends State<DailyOffers> {
  List<String> categoriesImgs = [
    'geek',
    'skate',
    'metal',
    'nerd',
    'nerd',
  ];

  List<String> categoriesTitle = [
    'Geek',
    'Skate',
    'Metal',
    'Nerd',
    'Nerd',
  ];

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Align(
            alignment: AlignmentDirectional.centerStart,
            child: Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10, left: 2),
              child: Row(
                spacing: 10,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Ofertas Relâmpago',
                    style: GoogleFonts.urbanist(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'termina em: 12h : 39m',
                    style: GoogleFonts.urbanist(
                        color: const Color(0xFFF26B0F),
                        fontWeight: FontWeight.w400,
                        fontSize: 18),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: deviceSize.height / 3.4,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: deviceSize.width / 50,
                );
              },
              itemBuilder: (BuildContext context, int index) {
                return SizedBox(
                  width: 170,
                  height: 300,
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: SizedBox(
                            height: 160,
                            child: Image.asset(
                              'assets/images/wear/${categoriesImgs[index]}.png',
                            ),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: deviceSize.height / 13,
                          decoration: BoxDecoration(
                            color: const Color(0xFFF26B0F),
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Casaco Trasher Mag...',
                                  style: GoogleFonts.urbanist(
                                    color: Color(0xFFFFFFFF),
                                  ),
                                ),
                                Text(
                                  'R\$ 100,00',
                                  style: GoogleFonts.urbanist(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: 30,
                                  width: double.infinity,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '5 Vendidos',
                                        style: GoogleFonts.urbanist(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w300,
                                        ),
                                      ),
                                      Icon(
                                        Icons.favorite_outline_rounded,
                                        color: Color(0xFFFFFFFF),
                                        size: 20,
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
