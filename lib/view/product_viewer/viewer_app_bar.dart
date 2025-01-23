import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ViewerAppBar extends StatefulWidget implements PreferredSizeWidget {
  const ViewerAppBar({super.key});

  @override
  State<ViewerAppBar> createState() => _ViewerAppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(140);
}

class _ViewerAppBarState extends State<ViewerAppBar> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return AppBar(
      backgroundColor: const Color(0xFFF26B0F),
      toolbarHeight: 140,
      leadingWidth: double.infinity,
      leading: Column(
        children: [
          SizedBox(
            height: deviceSize.width / 6,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: deviceSize.width / 0.1,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.arrow_back_rounded,
                      size: 50,
                      color: const Color(0xFFD9D9D9),
                    ),
                  ),
                ),
                SizedBox(
                  height: deviceSize.width / 8,
                  child: Image.asset(
                    'assets/images/logo/logo.png',
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: const Color(0xFFD9D9D9),
                    size: 40,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 40,
              child: TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: const Color(0xFFD9D9D9),
                  labelText: 'Diz aí o que tu quer, boy?',
                  labelStyle: GoogleFonts.urbanist(
                    color: const Color(0xFF7B7A7A),
                  ),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search_rounded,
                      color: const Color(0xFF7B7A7A),
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(6),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
