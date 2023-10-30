import 'package:flutter/material.dart';

import 'data.dart';

TextStyle textStyle = TextStyle(
  color: Colors.black54,
);

class ItemWidget extends StatelessWidget {
  final InfoItem data;
  const ItemWidget(this.data, {super.key}); // 记住this.data一定要在前面,并且和后面对象独立

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(data.navigateUrl);
      },
      child: Container(
        height: 100.0,
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
        child: Row(
          children: [
            Image.network(
              data.imageUrl,
              width: 120.0,
              height: 90.0,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
            ),
            Expanded(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600, color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      data.source,
                      style: textStyle,
                    ),
                    Text(data.time, style: textStyle),
                  ],
                )
              ],
            )),
          ],
        ),
      ),
    );
  }
}
