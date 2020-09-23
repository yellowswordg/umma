import 'package:flutter/material.dart';
import 'package:umma_app/data/data.dart';
import 'package:umma_app/screens/azkar_list_screen/azkar_list_screen.dart';
import 'package:umma_app/utils/size_config.dart';

class Azkar extends StatelessWidget {
  final int index;
  final double defaultSize;
  const Azkar({
    Key key,
    this.index,
    this.defaultSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (_) => AzkarList(
                    azakrList: azakrs[index].azakrList,
                  ))),
      child: Stack(
        fit: StackFit.loose,
        alignment: Alignment.bottomLeft,
        children: [
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: defaultSize * 2, vertical: defaultSize * 1),
            alignment: Alignment.bottomLeft,
            width: SizeConfig.blockSizeHorizontal * 90,
            height: SizeConfig.blockSizeVertical * 21,
            decoration: (BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(azakrs[index].imgUrl),
              ),
              borderRadius: BorderRadius.circular(SizeConfig.defaultSize * 0.5),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(
                bottom: SizeConfig.defaultSize * 4,
                left: SizeConfig.defaultSize * 5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHolder(
                  title: azakrs[index].title,
                  color: Colors.white,
                  fontSize: SizeConfig.defaultSize * 2.3,
                ),
                SizedBox(
                  height: SizeConfig.defaultSize * 1,
                ),
                Row(
                  children: [
                    TextHolder(
                        title: 'посмотреть',
                        color: Theme.of(context).accentColor,
                        fontSize: SizeConfig.defaultSize * 1.7),
                    Padding(
                      padding: EdgeInsets.only(
                          top: SizeConfig.defaultSize * 0.35,
                          left: SizeConfig.defaultSize * 0.5),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.green,
                        size: SizeConfig.defaultSize * 1.1,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class TextHolder extends StatelessWidget {
  const TextHolder({
    Key key,
    this.title,
    this.color,
    this.fontSize,
  }) : super(key: key);
  final String title;
  final Color color;
  final double fontSize;
  @override
  Widget build(BuildContext context) {
    return Text(title, style: TextStyle(color: color, fontSize: fontSize));
  }
}
