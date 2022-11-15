import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/moduls/home/widget/app_bar_widget.dart';
import 'package:travel_app_ui/moduls/home/widget/category_list_widget.dart';
import 'package:travel_app_ui/moduls/home/widget/search_bar_widget.dart';
import 'package:travel_app_ui/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final List _category = [
    'Camping',
    'Mountain',
    'Climbing',
    'Swiming',
    'Extra'
  ];
  final int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          color: Utils().homebg,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppBarWidget(),

              //Where would like you to go?
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                child: Text(
                  'Where would \n like you to go?',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.w600),
                ),
              ),

              const SearchBarWidget(),
              CategoryListWidget(category: _category, indexid: _index),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 28,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Favorite Place",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "View all",
                        style: GoogleFonts.poppins(
                            fontSize: 12, color: Colors.grey),
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
  }
}
