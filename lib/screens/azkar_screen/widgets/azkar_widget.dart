import 'package:flutter/material.dart';
import 'package:umma_app/data/data.dart';
import 'package:umma_app/screens/azkar_list_screen/azkars_list_screen.dart';
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
          ),
        ),
      ),
      child: Center(
        child: Stack(
          fit: StackFit.loose,
          alignment: Alignment.bottomLeft,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                  horizontal: defaultSize * 1.7, vertical: defaultSize * 1.7),
              alignment: Alignment.bottomLeft,
              width: SizeConfig.blockSizeHorizontal * 90,
              height: SizeConfig.blockSizeVertical * 18.5,
              decoration: (BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(azakrs[index].imgUrl),
                ),
                borderRadius:
                    BorderRadius.circular(SizeConfig.defaultSize * 0.5),
              )),
            ),
            Positioned(
              bottom: defaultSize * 3.2,
              left: defaultSize * 3.2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${azakrs[index].title}',
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  SizedBox(
                    height: defaultSize * 0.4,
                  ),
                  Row(
                    children: [
                      Text(
                        'Посмотреть',
                        style: Theme.of(context).textTheme.subtitle1,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: SizeConfig.defaultSize * 0.35,
                            left: SizeConfig.defaultSize * 0.5),
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Theme.of(context).accentColor,
                          size: SizeConfig.defaultSize * 1.2,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/* Vector */
