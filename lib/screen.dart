import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:task2_flutter/CoustomWidgets.dart';


class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  bool statusFaceId = true;
  bool statusPin = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    double fontSize = screenWidth * 0.04;
    double containerPadding = screenWidth * 0.04;
    double toggleWidth = screenWidth * 0.15;
    double toggleHeight = screenHeight * 0.04;
    double toggleSize = screenHeight * 0.03;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Settings",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: fontSize),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(containerPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomSectionHeader(
              title: "Security Settings",
              fontSize: fontSize,
            ),
            SizedBox(height: screenHeight * 0.02),

            Container(
              padding: EdgeInsets.all(containerPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: Column(
                children: [
                  CustomToggleRow(
                    label: 'Face ID',
                    value: statusFaceId,
                    onChanged: (val) {
                      setState(() {
                        statusFaceId = val;
                      });
                    },
                    fontSize: fontSize,
                    toggleWidth: toggleWidth,
                    toggleHeight: toggleHeight,
                    toggleSize: toggleSize,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  CustomToggleRow(
                    label: 'PIN',
                    value: statusPin,
                    onChanged: (val) {
                      setState(() {
                        statusPin = val;
                      });
                    },
                    fontSize: fontSize,
                    toggleWidth: toggleWidth,
                    toggleHeight: toggleHeight,
                    toggleSize: toggleSize,
                  ),
                  SizedBox(height: screenHeight * 0.02),
                  CustomTextRow(
                    label: 'Change PIN',
                    fontSize: fontSize,
                  ),
                ],
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            CustomSectionHeader(
              title: "Password",
              fontSize: fontSize,
            ),
            SizedBox(height: screenHeight * 0.02),

            Container(
              padding: EdgeInsets.all(containerPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: CustomTextRow(
                label: 'Change Password',
                fontSize: fontSize,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            CustomSectionHeader(
              title: "Approved Addresses",
              fontSize: fontSize,
            ),
            SizedBox(height: screenHeight * 0.02),

            Container(
              padding: EdgeInsets.all(containerPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child: CustomTextRow(
                label: 'Manage',
                fontSize: fontSize,
              ),
            ),
            SizedBox(height: screenHeight * 0.03),

            CustomSectionHeader(
              title: "Security Keys",
              fontSize: fontSize,
            ),
            SizedBox(height: screenHeight * 0.02),

            Container(
              padding: EdgeInsets.all(containerPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                border: Border.all(color: Colors.black, width: 1),
              ),
              child:Row(
                children: [
                  Icon(
                      Icons.add,
                     color: Colors.greenAccent,
                  ),
                  Expanded(
                    child: Text(
                     ' add security keys',
                      style: TextStyle(
                        fontSize: fontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: fontSize * 0.8),
                ],
              )
            ),
          ],
        ),
      ),
    );
  }
}