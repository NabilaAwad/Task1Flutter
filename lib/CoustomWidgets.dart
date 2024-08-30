import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSectionHeader extends StatelessWidget {
  final String title;
  final double fontSize;

  const CustomSectionHeader({
    required this.title,
    required this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize * 1.2,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

/////////////////////////
class CustomToggleRow extends StatelessWidget {
  final String label;
  final bool value;
  final ValueChanged<bool> onChanged;
  final double fontSize;
  final double toggleWidth;
  final double toggleHeight;
  final double toggleSize;

  const CustomToggleRow({
    required this.label,
    required this.value,
    required this.onChanged,
    required this.fontSize,
    required this.toggleWidth,
    required this.toggleHeight,
    required this.toggleSize,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        FlutterSwitch(
          value: value,
          onToggle: onChanged,
          width: toggleWidth,
          height: toggleHeight,
          valueFontSize: fontSize * 0.6,
          toggleSize: toggleSize,
          activeColor: Colors.greenAccent,
          borderRadius: 30,
          padding: 5,
        ),
      ],
    );
  }
}
////////////////////////////////////////////
class CustomTextRow extends StatelessWidget {
  final String label;
  final double fontSize;
  final IconData icon;
  final Color iconColor;

  const CustomTextRow({
    required this.label,
    required this.fontSize,
    this.icon = Icons.arrow_forward_ios,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            label,
            style: TextStyle(
              fontSize: fontSize,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Icon(icon, size: fontSize * 0.8, color: iconColor),
      ],
    );
  }
}