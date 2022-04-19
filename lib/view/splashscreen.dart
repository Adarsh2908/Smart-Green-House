import 'package:flutter/material.dart';
import 'package:smart_gh/constants/colors.dart';
import 'package:smart_gh/view/homescreen.dart';
import 'package:smart_gh/widgets/widgets.dart';

// It will Need an Stateless Widget
class splashScreen extends StatelessWidget {
  const splashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //Objects
    MyColors mc = MyColors();
    Widgets wd = Widgets();
    //Variables
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return (
      SafeArea(
          child: Center(
            child: Material(
              child: Container(
               height: height,
                width: width,
                color: mc.background,
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    children:  [
                      // Picture
                      const SizedBox(height: 100.0),
                      const Image(image: AssetImage('assets/images/splash.png')),
                      // Main Text
                      const SizedBox(height: 70.0),
                      wd.putText("WELCOME!", 35.0, 3.0, mc.darkText),
                      // Caption Text
                      const SizedBox(height: 25.0),
                      wd.putText("SMART APPROACH TO SMART FARMING", 14.0, 1.0, mc.lightText),

                      // Continue Button
                      const SizedBox(height: 100.0),
                      InkWell(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 175.5,
                            height: 47.0,
                            decoration: BoxDecoration(
                              color: mc.primaryBlue,
                              borderRadius: BorderRadius.circular(10.0)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Text
                                wd.putText("Continue", 16.5, 2.0, Colors.white),
                                // Icon
                                const Icon(Icons.arrow_forward_rounded,color: Colors.white,size: 20.0,),

                              ],
                            ),
                          ),
                        ),
                        onTap: ()=>{
                          Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context)=> const homescreen())
                          )
                        },
                      )
                    ],
                  ),
                ),

              ),
            ),
          )

    ));
  }
}
