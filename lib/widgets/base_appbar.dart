import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final AppBar appBar;

  final double defaultSize;

  const BaseAppBar({Key key, this.title, this.appBar, this.defaultSize})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).appBarTheme.color,
      title: Text(
        '$title',
        style: TextStyle(
          color: Colors.black,
          fontSize: defaultSize * 1.7,
          fontWeight: FontWeight.w700,
        ),
      ),
      centerTitle: true,
      elevation: 0,
      actions: [
        IconButton(
          icon: Icon(
            Icons.search,
            size: defaultSize * 2.7,
            color: Theme.of(context).accentColor,
          ),
          onPressed: () {},
        )
      ],
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Theme.of(context).accentColor,
          size: defaultSize * 2,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}