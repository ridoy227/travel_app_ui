import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel_app_ui/moduls/details/view/details_screen_view.dart';
import 'package:travel_app_ui/moduls/home/widget/app_bar_widget.dart';
import 'package:travel_app_ui/moduls/home/widget/category_list_widget.dart';
import 'package:travel_app_ui/moduls/home/widget/search_bar_widget.dart';
import 'package:travel_app_ui/utils/color_convert.dart';
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
              ),
             const  SizedBox(height: 10,),

              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context,index){
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: 20
                      ),
                      child: InkWell(
                        onTap: (){
                          Get.to(DetailsScreen(
                            imglink: 'assets/images/img1.png', 
                            title: 'Tanjung Aan', 
                            description: 'The most beautiful beach in Lombok and the closest to Kuta. It\'s only 15 minutes ride by scooter on a paved road from Kuta.', 
                            price: '230',
                            htag:'$index'
                            ));
                        },
                        child: SizedBox(
                          height: Get.height/4,
                          
                          child: Stack(
                            children: [
                              Container(
                                alignment: Alignment.topCenter,
                                height:Get.height/4.5,
                                child: ClipRRect(
                                  
                                  borderRadius: BorderRadius.circular(12),
                                  child: Hero(
                                    tag: '$index',
                                    child: Image.asset('assets/images/img1.png',fit: BoxFit.fill,))),
                              ),
                      
                              Positioned(
                                bottom: 0,
                                right: 40,
                                left: 40,
                                child: Container(
                                  padding:const EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 2
                                    
                      
                                  ),
                                  height: 60,
                                  width: 250,
                                  decoration: BoxDecoration(
                                    color: colorConvert('FFFFFF'),
                                    borderRadius: BorderRadius.circular(8),
                                    boxShadow:  [
                                      BoxShadow(
                                        blurRadius: 0.2,
                                        spreadRadius: 1,
                                        color: colorConvert('EFF4FF'),
                                        offset:const Offset(00, 1)
                                      )
                                    ]
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text('Tanjung Aan',
                                          style: GoogleFonts.poppins(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500
                                          ),
                                          ),
                                          Text('Pujut, Lombok Tengah',
                                          style: GoogleFonts.poppins(
                                            fontSize: 10,
                                            color: colorConvert('BFBFBF')
                                          ),
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
                                        child: Text('\$230',
                                        style: GoogleFonts.poppins(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                          color: colorConvert('1D3FFF')
                                        ),
                                        ),
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
                  )
                )
            ],
          ),
        ),
      ),
    );
  }
}
