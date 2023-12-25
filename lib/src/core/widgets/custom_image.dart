import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({Key? key, required this.imageUrl}) : super(key: key);
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    // TODO: [ChachedNetworkImage] if the image url points to a remote resource
    return Image.asset(imageUrl);
  }
}
