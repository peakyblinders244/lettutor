import 'package:flutter/cupertino.dart';

import '../../resources/gen/assets.gen.dart';

class ImageNetworkComponent extends StatelessWidget {
  String url;

  ImageNetworkComponent({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.network(url,errorBuilder: (context, error, stackTrace) {
      return Assets.images.notFoundImages.image();
    },);
  }
}
