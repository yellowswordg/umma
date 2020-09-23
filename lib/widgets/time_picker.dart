import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:umma_app/data/data.dart';

class TimePicker extends StatefulWidget {
  const TimePicker({
    Key key,
    @required this.defaultSize,
  }) : super(key: key);

  final double defaultSize;

  @override
  _TimePickerState createState() => _TimePickerState();
}

class _TimePickerState extends State<TimePicker> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: widget.defaultSize * 1.6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/location.svg',
                height: widget.defaultSize * 2,
                // width: defaultSize * 1.4,
              ),
              SizedBox(
                width: 4,
              ),
              Text(
                'Москва',
                style: TextStyle(
                  fontSize: widget.defaultSize * 1.5,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).accentColor,
                ),
              )
            ],
          ),
          Row(
            children: List.generate(
              times.length,
              (index) => GestureDetector(
                onTap: () {
                  setState(() {
                    selected = index;
                  });
                },
                child: Container(
                  decoration: selected == index
                      ? BoxDecoration(
                          border:
                              Border.all(color: Theme.of(context).accentColor),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        )
                      : null,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: widget.defaultSize * 0.5,
                    ),
                    child: Text(
                      times[index],
                      style: TextStyle(
                        color: index == selected
                            ? Theme.of(context).accentColor
                            : Color(0xFF052B32),
                        fontSize: widget.defaultSize * 1.2,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SvgPicture.asset(
            'assets/icons/notification.svg',
            height: widget.defaultSize * 2,
            // width: defaultSize * 1.4,
          ),
        ],
      ),
    );
  }
}
