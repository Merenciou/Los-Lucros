import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:increment_decrement_form_field/increment_decrement_form_field.dart';

class InstantPurchase extends StatefulWidget {
  const InstantPurchase({super.key});

  @override
  State<InstantPurchase> createState() => _InstantPurchaseState();
}

class _InstantPurchaseState extends State<InstantPurchase> {
  int value = 1;
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFF26B0F),
        centerTitle: true,
        title: Text(
          'Finalizar Compra',
          style: GoogleFonts.urbanist(
              color: Color(0xFFFFFFFF),
              fontWeight: FontWeight.w500,
              fontSize: 20),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Color(0xFFFFFFFF),
            size: deviceSize.width / 10,
          ),
        ),
      ),
      backgroundColor: Color(0xFFD9D9D9),
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.all(0),
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: deviceSize.width / 3,
                      decoration: BoxDecoration(
                        color: Color(0xFFD9D9D9),
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      child: Image.asset('assets/images/wear/skate.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Casaco Trasher Magazine',
                          style: GoogleFonts.urbanist(
                            color: Color(0xFF000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Tamanho M',
                          style: GoogleFonts.urbanist(
                            color: Color(0x5C000000),
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: deviceSize.width / 1.7,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cor Preta',
                                style: GoogleFonts.urbanist(
                                  color: Color(0x5C000000),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(
                                    top: deviceSize.height / 22),
                                width: 105,
                                height: 48,
                                decoration: BoxDecoration(
                                  color: Color(0xFFD9D9D9),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10),
                                  ),
                                ),
                                child: IncrementDecrementFormField<int>(
                                  initialValue: value,
                                  incrementIconButtonConfig: IconButtonConfig(
                                    icon: Icon(
                                      Icons.add_box_rounded,
                                      color: const Color(0xFFF26B0F),
                                    ),
                                  ),
                                  decrementIconButtonConfig: IconButtonConfig(
                                    icon: Icon(
                                      Icons.indeterminate_check_box_rounded,
                                      color: const Color(0xFFF26B0F),
                                    ),
                                  ),
                                  displayBuilder: (value, field) {
                                    return Text(
                                      value == null
                                          ? 0.toString()
                                          : value.toString(),
                                    );
                                  },
                                  onIncrement: (currentValue) {
                                    value = currentValue! + 1;
                                    return value;
                                  },
                                  onDecrement: (currentValue) {
                                    value = value > 1 ? currentValue! - 1 : 1;

                                    return value;
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Frete:',
                      style: GoogleFonts.urbanist(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'R\$19,90',
                      style: GoogleFonts.urbanist(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: SizedBox(
                  height: deviceSize.height / 1.9,
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Valor total:',
                          style: GoogleFonts.urbanist(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'R\$190,90',
                          style: GoogleFonts.urbanist(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.1,
            minChildSize: 0.1,
            maxChildSize: 0.995,
            builder: (BuildContext context, ScrollController scrollController) {
              return ListView(
                controller: scrollController,
                children: [
                  Container(
                    width: double.infinity,
                    height: deviceSize.height,
                    decoration: BoxDecoration(
                      color: Color(0xFFFFFFFF),
                      border: Border(bottom: BorderSide.none),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF0D92F4),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.keyboard_arrow_up_rounded,
                            color: Color(0xFFFFFFFF),
                            size: 26,
                          ),
                          Text(
                            'Continuar',
                            style: GoogleFonts.urbanist(
                                color: Color(0xFFFFFFFF), fontSize: 20),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(top: deviceSize.height / 2),
                            child: CircularProgressIndicator(
                              strokeAlign: 8,
                              strokeCap: StrokeCap.round,
                              strokeWidth: 1.8,
                              color: Color(0xFFFFFFFF),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
