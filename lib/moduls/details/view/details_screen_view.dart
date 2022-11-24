import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/utils/color_convert.dart';
import 'package:travel_app_ui/utils/utils.dart';

class DetailsScreen extends StatelessWidget {
  DetailsScreen(
      {super.key,
      required this.imglink,
      required this.title,
      required this.description,
      required this.price,
      required this.htag});
  String imglink, title, description, price, htag;

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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Total Price',
                          style: GoogleFonts.poppins(
                              fontSize: 12, color: colorConvert('BFBFBF')),
                        ),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: '\$$price',
                                style: GoogleFonts.poppins(
                                  fontSize: 20,
                                  color: colorConvert('1D3FFF')
                                )
                              ),
                              TextSpan(
                                text: '/person',
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  color: colorConvert('BFBFBF')
                                )
                              )
                            ]
                          ),
                          )

              
              ],
            ),
            Container(
              height: 40,
              width: 100,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: colorConvert('1D3FFF'),
                borderRadius: BorderRadius.circular(12)
              ),
              child: Text('Order Now',
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w500
              ),
              ),
            )


          

          ],
        ),
      ),
      body: SafeArea(
          child: Container(
        height: Get.height,
        width: Get.width,
        color: Utils().homebg,
        child: Column(
         
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SizedBox(
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: colorConvert('EFF4FF'),
                              borderRadius: BorderRadius.circular(20)),
                          child: Icon(Icons.arrow_back_outlined)),
                    ),
                    Text(
                      'Details',
                      style: GoogleFonts.poppins(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                            color: colorConvert('EFF4FF'),
                            borderRadius: BorderRadius.circular(20)),
                        child: Icon(Icons.more_horiz))
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: SizedBox(
                height: 320,
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Hero(
                        tag: htag,
                        child: Image.asset(
                          imglink,
                          fit: BoxFit.cover,
                        ))),
              ),
            ),


            //title and details


            Container(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
              height: 60,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tanjung Aan',
                        style: GoogleFonts.poppins(
                            fontSize: 14, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Pujut, Lombok Tengah',
                        style: GoogleFonts.poppins(
                            fontSize: 10, color: colorConvert('BFBFBF')),
                      )
                    ],
                  ),
                  Container(
                    height: 32,
                    width: 48,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: colorConvert('EFF4FF'),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Text(
                      '\$230',
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: colorConvert('1D3FFF')),
                    ),
                  )
                ],
              ),
            ),

            //description 

              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 30
                ),
                child: Column(
                   crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          'Description',
                          style: GoogleFonts.poppins(
                              fontSize: 14, fontWeight: FontWeight.w500),
                        ),
                       const SizedBox(
                          height: 10,
                        ),
                        Text(
                          description,
                          style: GoogleFonts.poppins(
                              fontSize: 10, color: colorConvert('BFBFBF')),
                        )
                  ],
                ),
              )


          ],
        ),
      )),
    );
  }
}
