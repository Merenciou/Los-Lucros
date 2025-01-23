import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:los_lucros/view/product_viewer/viewer_app_bar.dart';

class ProductViewerScreen extends StatefulWidget {
  const ProductViewerScreen({super.key});

  @override
  State<ProductViewerScreen> createState() => _ProductViewerScreenState();
}

class _ProductViewerScreenState extends State<ProductViewerScreen> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      appBar: ViewerAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
          width: double.infinity,
          height: deviceSize.height / 1,
          child: Column(
            spacing: 10,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: double.infinity,
                height: deviceSize.height / 1.9,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: SizedBox(
                          height: deviceSize.height / 3.2,
                          child: Image.asset(
                            'assets/images/wear/skate.png',
                          ),
                        ),
                      ),
                      Row(
                        spacing: 10,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.circle,
                            size: 16,
                            color: const Color(0xFF9E9E9E),
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: const Color(0xFFD9D9D9),
                          ),
                          Icon(
                            Icons.circle,
                            size: 14,
                            color: const Color(0xFFD9D9D9),
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        height: deviceSize.height / 8,
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
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Casaco Trasher Magazine',
                                    style: GoogleFonts.urbanist(
                                        color: Color(0xFFFFFFFF), fontSize: 20),
                                  ),
                                  Icon(
                                    Icons.favorite_outline_rounded,
                                    color: Color(0xFFFFFFFF),
                                    size: 26,
                                  ),
                                ],
                              ),
                              Text(
                                'R\$ 100,00',
                                style: GoogleFonts.urbanist(
                                    color: const Color(0xFFFFFFFF),
                                    fontWeight: FontWeight.w600,
                                    fontSize: 20),
                              ),
                              SizedBox(
                                height: 30,
                                width: double.infinity,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '5 Vendidos',
                                      style: GoogleFonts.urbanist(
                                          color: const Color(0xFFFFFFFF),
                                          fontWeight: FontWeight.w300,
                                          fontSize: 18),
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.star_rounded,
                                          color: const Color(0xFFF8BD00),
                                        ),
                                        Icon(
                                          Icons.star_rounded,
                                          color: const Color(0xFFF8BD00),
                                        ),
                                        Icon(
                                          Icons.star_rounded,
                                          color: const Color(0xFFF8BD00),
                                        ),
                                        Icon(
                                          Icons.star_rounded,
                                          color: const Color(0xFFF8BD00),
                                        ),
                                        Icon(
                                          Icons.star_half_rounded,
                                          color: const Color(0xFFF8BD00),
                                        ),
                                      ],
                                    ),
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 0),
                child: SizedBox(
                  width: deviceSize.width / 1.18,
                  child: Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        label: Text(
                          'Insira o seu CEP:',
                          style: GoogleFonts.urbanist(
                              color: const Color(0xFF676767)),
                        ),
                        filled: true,
                        fillColor: const Color(0xFFFFFFFF),
                        suffixIcon: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(100, 60),
                            backgroundColor: const Color(0xFF0D92F4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                          child: Text(
                            'Calcular',
                            style: GoogleFonts.urbanist(
                                color: const Color(0xFFFFFFFF),
                                fontSize: 16,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(10),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  backgroundColor: const Color(0xFF0D92F4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  'Adicionar ao Carrinho',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 60),
                  backgroundColor: const Color(0xFF5CB338),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                child: Text(
                  'Finalizar Compra',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFFFFFFFF),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
