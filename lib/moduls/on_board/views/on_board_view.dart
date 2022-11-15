import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:travel_app_ui/moduls/dashboard/view/dashboard_view.dart';
import 'package:travel_app_ui/utils/utils.dart';

class OnBoardView extends StatelessWidget {
  const OnBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          color: Utils().onboardbg,
          height: Get.height,
          width: Get.width,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              const SizedBox(height: 20,),
          SizedBox(
                  height: 200,
                  child: Image.asset('assets/images/splash.png',fit: BoxFit.fitHeight,),
                ),


                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 20
                  ),
                  child: Container(
                    height: 320,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(40),
                      boxShadow:kElevationToShadow[2],
                        
                      
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 250,
                          child: IntroductionScreen(
                            globalBackgroundColor: Colors.transparent,
                            
                            
                            pages: [
                              PageViewModel(
                                title: 'Easily Travel \n From Your Pocket',
                                body: 'Eaasily plan, manage and \n order your trip, and journey \n with Safari',
                                decoration: PageDecoration(
                                  titleTextStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24
                                  ),
                                  bodyTextStyle: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey
                                  )
                                )
                              ),
                              PageViewModel(
                                title: 'Easily Travel \n From Your Pocket',
                                body: 'Eaasily plan, manage and \n order your trip, and journey \n with Safari',
                                decoration: PageDecoration(
                                  titleTextStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24,                                    
                                  ),
                                  bodyTextStyle: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey
                                  )
                                )
                              ),
                              PageViewModel(

                                title: 'Easily Travel \n From Your Pocket',
                                body: 'Eaasily plan, manage and \n order your trip, and journey \n with Safari',
                                decoration: PageDecoration(
                                  titleTextStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 24
                                  ),
                                  bodyTextStyle: GoogleFonts.poppins(
                                    fontSize: 12,
                                    color: Colors.grey
                                  )
                                )
                              )
                            ],
                            showDoneButton: false,
                            showBackButton: false,
                            showNextButton: false,
                            showSkipButton: false,
                          ),
                        ),
                        //get started button
                        InkWell(
                          onTap: (){
                            Get.to(() =>const  DashBoardView() );
                          },
                          child: Container(
                            alignment: Alignment.center,
                            height: 50,
                            width: 250,
                            decoration: BoxDecoration(
                              color: Utils().buttonbg,
                              borderRadius: BorderRadius.circular(28)
                            ),
                            child: Text('Get Started',
                            style: GoogleFonts.poppins(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white
                            ),
                            
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
}