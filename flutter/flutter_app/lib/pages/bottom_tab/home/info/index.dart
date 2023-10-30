import 'package:flutter/material.dart';

import 'data.dart';
import 'item_widget.dart';

class Info extends StatelessWidget {
  final bool showTitle;
  final List<InfoItem> dataList;

  const Info({super.key, this.showTitle = false, this.dataList = infoData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            alignment: Alignment.topLeft,
            child: Text('最新资讯'),
          ),
          Column(
              children: dataList
                  .map((item) => Container(
                        height: 100,
                        margin: EdgeInsets.only(bottom: 10),
                        // decoration: BoxDecoration(color: Colors.red),
                        child: ItemWidget(item),
                      ))
                  .toList()),
        ],
      ),
    );
  }
}
