import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BackgroundScreen extends StatelessWidget {
  const BackgroundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      width: double.infinity,
      child: CachedNetworkImage(
        imageUrl: Theme.of(context).brightness == Brightness.dark
            ? "https://cloudfront-us-east-1.images.arcpublishing.com/gray/IJPS3FXTCNITDC53CYGGD62ZGY.jpg"
            : "https://img.freepik.com/premium-vector/coronavirus-covid-19-fighters-02_126288-23.jpg?w=2000",
        fit: BoxFit.cover,
      ),
    );
  }
}
