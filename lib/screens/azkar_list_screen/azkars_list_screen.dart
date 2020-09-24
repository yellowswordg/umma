import 'package:flutter/material.dart';
import 'package:umma_app/models/azkar.dart';
import 'package:umma_app/utils/size_config.dart';
import 'package:umma_app/widgets/base_appbar.dart';
import 'package:umma_app/widgets/notification_bar.dart';

import '../../widgets/custom_devider.dart';

class AzkarList extends StatelessWidget {
  final List<Azkar> azakrList;

  const AzkarList({Key key, this.azakrList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: BaseAppBar(
        defaultSize: defaultSize,
        title: 'Азкары',
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          NotificationBar(defaultSize: defaultSize),
          Container(
            height: SizeConfig.blockSizeVertical * 75,
            child: ListView.builder(
              itemCount: azakrList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(defaultSize * 1.6),
                      child: Text(
                        azakrList[index].title,
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ),
                    CustomDivider(),
                    Padding(
                      padding: EdgeInsets.all(defaultSize * 1.6),
                      child: Image(
                        fit: BoxFit.none,
                        image: AssetImage(
                          azakrList[index].imgUrl,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(defaultSize * 1.6, 0,
                          defaultSize * 1.6, defaultSize * 1.6),
                      child: Text(
                        azakrList[index].text,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultSize * 1.6),
                      child: Text(
                        azakrList[index].translation,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    CustomDivider(),
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
