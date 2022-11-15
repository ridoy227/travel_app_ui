import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/utils/color_convert.dart';
import 'package:travel_app_ui/utils/utils.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: SizedBox(
        height: 48,
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        blurRadius: 5,
                        spreadRadius: .1,
                        color: colorConvert('BFBFBF'),
                        offset: const Offset(03, 5))
                  ]),
              alignment: Alignment.centerLeft,
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: const Icon(Icons.search),
                    hintText: 'Search location',
                    hintStyle: GoogleFonts.poppins(
                      fontSize: 14,
                      color: colorConvert('BFBFBF'),
                    )),
              ),
            )),
            const SizedBox(
              width: 15,
            ),
            Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Utils().buttonbg),
              alignment: Alignment.center,
              child: Image.asset(
                'assets/images/Filter.png',
                fit: BoxFit.fill,
              ),
            )
          ],
        ),
      ),
    );
  }
}
