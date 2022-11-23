import 'package:flutter/material.dart';
import 'package:travel_app_ui/moduls/home/view/home_screen.dart';
import 'package:travel_app_ui/utils/color_convert.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: colorConvert('FFFFFF'),
          borderRadius:const BorderRadius.only(
            topLeft: Radius.circular(15),
            topRight:  Radius.circular(15)
          )
        ),
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(
          horizontal: 20
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: SizedBox(
                height: 20,
                width: 17,
                child: Image.asset('assets/images/Home.png'),
              ),
            ),
            InkWell(
              child: SizedBox(
                height: 20,
                width: 17,
                child: Image.asset('assets/images/Discount.png'),
              ),
            ),
            InkWell(
              child: SizedBox(
                height: 20,
                width: 17,
                child: Image.asset('assets/images/Profile.png'),
              ),
            ),
            InkWell(
              child: SizedBox(
                height: 20,
                width: 17,
                child: Image.asset('assets/images/Paper.png'),
              ),
            )

          ],
        ),
      ),
      body: HomeScreen(),
    );
  }
}