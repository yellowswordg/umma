import 'package:flutter/material.dart';
import 'package:umma_app/models/azakr.dart';
import 'package:umma_app/utils/size_config.dart';
import 'package:umma_app/widgets/base_appbar.dart';
import 'package:umma_app/widgets/notification_bar.dart';

class AzkarList extends StatelessWidget {
  final List<Azakr> azakrList;

  const AzkarList({Key key, this.azakrList}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    print(azakrList[2].title);
    SizeConfig().init(context);
    double defaultSize = SizeConfig.defaultSize;
    return Scaffold(
      appBar: BaseAppBar(
        defaultSize: defaultSize,
        title: 'Азакры',
        appBar: AppBar(),
      ),
      body: Column(
        children: [
          NotificationBar(defaultSize: defaultSize),
          Container(
            padding: EdgeInsets.only(top: 20),
            height: SizeConfig.blockSizeVertical * 80,
            child: ListView.builder(
              itemCount: azakrList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border: Border.symmetric(
                          vertical: BorderSide(
                            width: 1,
                            color: Color(0xFFD1D1D6),
                          ),
                        ),
                      ),
                      child: Text(azakrList[index].title),
                    ),
                    Image(
                      image: AssetImage('assets/images/script.png'),
                    ),
                    Text(azakrList[index].text),
                    Text(azakrList[index].translation)
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
