import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final signUpKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Scaffold(
      backgroundColor: const Color(0xFFF26B0F),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: deviceSize.width / 2.4,
            child: Image.asset(
              'assets/images/logo/logo.png',
            ),
          ),
          Form(
            key: signUpKey,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50),
              child: Column(
                spacing: 10,
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      labelText: 'Nome',
                      labelStyle: GoogleFonts.urbanist(
                        color: const Color(0xFF7B7A7A),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      labelText: 'E-mail',
                      labelStyle: GoogleFonts.urbanist(
                        color: const Color(0xFF7B7A7A),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      labelText: 'Senha',
                      labelStyle: GoogleFonts.urbanist(
                        color: const Color(0xFF7B7A7A),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      labelText: 'Confirme sua senha',
                      labelStyle: GoogleFonts.urbanist(
                        color: const Color(0xFF7B7A7A),
                      ),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.all(
                          Radius.circular(6),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF5CB338),
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              child: Text(
                'Cadastrar',
                style: GoogleFonts.urbanist(
                  color: const Color(0XFFFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF0D92F4),
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              child: Text(
                'Já tenho uma conta',
                style: GoogleFonts.urbanist(
                  color: const Color(0XFFFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 1,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
                Text(
                  'Ou',
                  style: GoogleFonts.urbanist(
                      color: const Color(0xFFFFFFFF),
                      fontWeight: FontWeight.w600,
                      fontSize: 20),
                ),
                Container(
                  width: 120,
                  height: 1,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFFFFF),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFFFFFFF),
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/images/icons/google_icon.png',
                    width: deviceSize.width / 11,
                  ),
                  Text(
                    'Cadastre-se com o Google',
                    style: GoogleFonts.urbanist(
                      color: const Color(0xFF4D4D4D),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
