import 'package:flutter/material.dart';
import 'package:umma_app/widgets/time_picker.dart';

class NotificationBar extends StatelessWidget {
  const NotificationBar({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: defaultSize * 5.2,
      decoration: BoxDecoration(
        border: Border.symmetric(
          vertical: BorderSide(
            width: 0.6,
            color: Color(0xFFD1D1D6),
          ),
        ),
      ),
      child: TimePicker(defaultSize: defaultSize),
    );
  }
}
