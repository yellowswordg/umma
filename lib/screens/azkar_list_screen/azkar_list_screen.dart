import 'package:flutter/material.dart';
import 'package:umma_app/models/azakr.dart';
import 'package:umma_app/utils/size_config.dart';
import 'package:umma_app/widgets/base_appbar.dart';
import 'package:umma_app/widgets/notification_bar.dart';

import 'widgets/custom_devider.dart';

class AzkarList extends StatelessWidget {
  final List<Azakr> azakrList;

  const AzkarList({Key key, this.azakrList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: BaseAppBar(
        defaultSize: defaultSize,
        title: 'Азакары',
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
                      padding: EdgeInsets.all(defaultSize * 1.6),
                      child: Text(
                        azakrList[index].text,
                        style: Theme.of(context).textTheme.bodyText1,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(defaultSize * 1.6),
                      child: Text(
                        azakrList[index].translation,
                        style: Theme.of(context)
                            .textTheme
                            .bodyText1
                            .merge(TextStyle(fontStyle: FontStyle.italic)),
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


