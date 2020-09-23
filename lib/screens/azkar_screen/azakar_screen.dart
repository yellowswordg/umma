import 'package:flutter/material.dart';
import 'package:umma_app/utils/size_config.dart';
import 'package:umma_app/data/data.dart';
import 'package:umma_app/widgets/base_appbar.dart';
import 'package:umma_app/widgets/notification_bar.dart';

import 'widgets/azkar_widget.dart';

class AzakrScreen extends StatefulWidget {
  @override
  _AzakrScreenState createState() => _AzakrScreenState();
}

class _AzakrScreenState extends State<AzakrScreen> {
  int selectedTime = 0;
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
          Expanded(
            child: ListView.separated(
              separatorBuilder: (BuildContext context, int index) => Divider(
                thickness: 2,
              ),
              itemCount: azakrs.length,
              itemBuilder: (context, index) {
                return Azkar(index: index, defaultSize: defaultSize);
              },
            ),
          ),
        ],
      ),
    );
  }
}
