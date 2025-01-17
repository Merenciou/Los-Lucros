import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PasswordRecoverScreen extends StatefulWidget {
  const PasswordRecoverScreen({super.key});

  @override
  State<PasswordRecoverScreen> createState() => _PasswordRecoverScreenState();
}

class _PasswordRecoverScreenState extends State<PasswordRecoverScreen> {
  final passwordRecoverKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Scaffold(
      backgroundColor: const Color(0xFFF26B0F),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: deviceSize.width / 2.4,
              child: Image.asset(
                'assets/images/logo/logo.png',
              ),
            ),
            Form(
              key: passwordRecoverKey,
              child: Column(
                children: [
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
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
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
                  'Enviar e-mail de recuperação',
                  style: GoogleFonts.urbanist(
                    color: const Color(0XFFFFFFFF),
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBE3144),
                minimumSize: Size(double.infinity, 60),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
              ),
              child: Text(
                'Cancelar',
                style: GoogleFonts.urbanist(
                  color: const Color(0XFFFFFFFF),
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
