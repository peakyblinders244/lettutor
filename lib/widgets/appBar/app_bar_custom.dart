import 'package:flutter/material.dart';

import '../../resources/gen/assets.gen.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  AppBarCustom({Key? key}) : preferredSize = const Size.fromHeight(56.0), super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: Assets.svg.lettutorLogo.svg(),
      leadingWidth: 200,
      actions: <Widget>[
        IconButton(
          icon: CircleAvatar(
            radius: 56,
            backgroundColor: Colors.grey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Assets.svg.vietnam.svg(),
            ),
          ),
          onPressed: () => {},
        ),
      ],
    );
  }


}
