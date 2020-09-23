import 'package:flutter/material.dart';
import 'package:umma_app/utils/size_config.dart';
import 'package:umma_app/data/data.dart';
import 'package:umma_app/widgets/base_appbar.dart';
import 'package:umma_app/widgets/notification_bar.dart';
import 'package:umma_app/widgets/time_picker.dart';

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
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.arrow_back_ios,
      //       color: Theme.of(context).accentColor,
      //       size: defaultSize * 2,
      //     ),
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         Icons.search,
      //         size: defaultSize * 2.7,
      //         color: Theme.of(context).accentColor,
      //       ),
      //       onPressed: () {},
      //     )
      //   ],
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   centerTitle: true,
      //   title: Text(
      //     'Азакры',
      //     style: TextStyle(
      //       color: Colors.black,
      //       fontSize: defaultSize * 1.7,
      //       fontWeight: FontWeight.w700,
      //     ),
      //   ),
      // ),
      appBar: BaseAppBar(
        defaultSize: defaultSize,
        title: 'Азакры',
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
          )
        ],
      ),
    );
  }
}
