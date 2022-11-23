import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:travel_app_ui/utils/utils.dart';


class DetailsScreen extends StatelessWidget {
   DetailsScreen({super.key, required this.imglink, required this.title, required this.description, required this.price });
   String imglink,title,description,price;
   



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          width: Get.width,
          color: Utils().homebg,
          child: Column(
            children: [

            ],
          ),
        )
      ),

    );
  }
}