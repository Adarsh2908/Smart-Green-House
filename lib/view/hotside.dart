import 'package:flutter/material.dart';
import 'package:smart_gh/constants/colors.dart';

import '../widgets/widgets.dart';

class hotSide extends StatefulWidget {
  const hotSide({Key? key}) : super(key: key);

  @override
  State<hotSide> createState() => _hotSideState();
}

class _hotSideState extends State<hotSide> {
  // Variable , lists

  // Objects
  Widgets wd = Widgets();
  MyColors mc = MyColors();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: wd.putText("SIDE - HOT ", 16, 1.0, Colors.white),
        backgroundColor: mc.primaryBlue,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25.0, 5.0, 25.0, 5.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Mesasurements text
                const SizedBox(height: 15.0),
                wd.putText("Measurements ", 19.5, 2.0, mc.darkText),

                // Temperature Text
                const SizedBox(height: 25.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wd.putText("TEMPERATURE ", 15.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Updated : 5 Min Ago", 10.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Unit : Celsius ", 10.0, 1.5, mc.primaryBlue),
                          ],
                        ),
                        // Temperature
                        wd.putText("35°C", 40.0, 1.5, mc.primaryBlue)
                      ],
                    ),
                  ),
                ),
                // Humidity
                const SizedBox(height: 25.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wd.putText("HUMIDITY ", 15.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Updated : 5 Min Ago", 10.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText("Unit : Percentage ", 10.0, 1.5,
                                mc.primaryGreen),
                          ],
                        ),
                        // Humidity
                        wd.putText("40% ", 40.0, 1.5, mc.primaryGreen)
                      ],
                    ),
                  ),
                ),

                // Air Quality
                const SizedBox(height: 25.0),
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                          color: Colors.grey.shade200,
                          width: 1.5,
                          style: BorderStyle.solid),
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            wd.putText("AIR QUALITY ", 15.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Updated : 5 Min Ago", 10.0, 1.5, mc.darkText),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Unit : Good / Bad ", 10.0, 1.5, mc.primaryRed),
                            const SizedBox(
                              height: 10.0,
                            ),
                            wd.putText(
                                "Gases : CO , CO2 ", 10.0, 1.5, mc.primaryRed),
                          ],
                        ),
                        // Humidity
                        Column(
                          children: [
                            // CO level
                            wd.putText(
                                "CO - GOOD", 20.0, 1.5, mc.primaryYellow),
                            // C02 level
                            const SizedBox(
                              height: 20.0,
                            ),
                            wd.putText("CO2 - BAD", 20.0, 1.5, mc.primaryRed),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                // Button Section to Check Different Things
                const SizedBox(
                  height: 20.0,
                ),
                wd.putText("ACTIONS", 18.0, 1.5, Colors.black45),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.red.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Text
                              wd.putText("FANS  ", 14, 1.0, Colors.red),
                              // Icon
                              const Icon(
                                Icons.settings_remote_outlined,
                                color: Colors.red,
                                size: 16.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () => {},
                    ),
                    InkWell(
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.yellow.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Text
                              wd.putText(
                                  "REFRESH  ", 14, 1.0, mc.primaryYellow),
                              // Icon
                              const Icon(
                                Icons.refresh_rounded,
                                color: Colors.yellow,
                                size: 16.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () => {},
                    ),

                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                wd.putText("STATUS", 20.0, 1.5, Colors.black45),
                const SizedBox(
                  height: 15.0,
                ),

                Row(
                  children: [
                    wd.putText("FANS - ", 15.0, 1.5, Colors.black45),
                    const SizedBox(
                      width: 10.0,
                    ),
                    wd.putText("ON", 15.0, 1.5, Colors.red)
                  ],
                ),
                const SizedBox(
                  height: 12.0,
                ),
                Row(
                  children: [
                    wd.putText("CONTROL UNIT - ", 15.0, 1.5, Colors.black45),
                    const SizedBox(
                      width: 10.0,
                    ),
                    wd.putText("WORKING", 15.0, 1.5, Colors.green)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
