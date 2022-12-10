import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../resources/font/font_text.dart';

class ScheduleItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Table(
        border: TableBorder.all(),
        columnWidths: const <int, TableColumnWidth>{
          0: FlexColumnWidth(),
          1: FlexColumnWidth(),
          2: FlexColumnWidth(),
        },
        children: <TableRow>[
          TableRow(children: <Widget>[
            Container(
              height: 50,
              child: Text('Name', style: text14.copyWith(color: Colors.black)),
            ),
            Container(
              height: 50,
              child: TextButton(
                onPressed: () {},
                child: Text('topic1.pdf', style: text14.copyWith(color: Colors.blue)),
              ),
            ),
            Container(
              height: 50,
              child: Text('Page', style: text14.copyWith(color: Colors.black)),
            ),
          ]),
        ],
      ),
    );
  }
}
