import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/utils/utils.dart';

// ignore: must_be_immutable
class CategoryListWidget extends StatelessWidget {
  CategoryListWidget(
      {super.key, required this.category, required this.indexid});
  List category;
  int indexid;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
      child: SizedBox(
          height: 40,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: category.length,
              itemBuilder: (_, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    width: 80,
                    height: 40,
                    decoration: BoxDecoration(
                        border: Border.all(
                          width: 1,
                          color:
                              index == indexid ? Utils().buttonbg : Colors.grey,
                        ),
                        color: index == indexid
                            ? Utils().buttonbg
                            : Utils().homebg,
                        borderRadius: BorderRadius.circular(8)),
                    alignment: Alignment.center,
                    child: Text(
                      category[index],
                      style: GoogleFonts.poppins(
                        fontSize: 12,
                        color: index == indexid ? Colors.white : Colors.grey,
                      ),
                    ),
                  ),
                );
              })),
    );
  }
}
