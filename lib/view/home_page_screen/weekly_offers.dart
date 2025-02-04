import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WeeklyOffers extends StatefulWidget {
  const WeeklyOffers({super.key});

  @override
  State<WeeklyOffers> createState() => _WeeklyOffersState();
}

class _WeeklyOffersState extends State<WeeklyOffers> {
  List<String> categoriesImgs = [
    'skate',
    'metal',
    'geek',
    'nerd',
    'nerd',
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
              child: Text(
                'Ofertas da Semana',
                style: GoogleFonts.urbanist(
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: deviceSize.height / 3.34,
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
                  child: InkWell(
                    onTap: () {
                      Navigator.of(context).pushNamed('/productviewerscreen');
                    },
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: SizedBox(
                              height: deviceSize.height / 5.2,
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
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
                                    height: deviceSize.height / 34,
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
