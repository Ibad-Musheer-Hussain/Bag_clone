import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  final Color color;
  final Color selectedColor;
  final ValueChanged<Color> onChanged;

  CustomRadioButton({
    required this.color,
    required this.selectedColor,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onChanged(color);
        },
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Container(
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: color,
              border: Border.all(
                color: color,
                width: 2.0,
              ),
            ),
            child: Center(
              child: selectedColor == color
                  ? Icon(
                      Icons.check,
                      color: Colors.black,
                      size: 15.0,
                    )
                  : null,
            ),
          ),
        ));
  }
}
