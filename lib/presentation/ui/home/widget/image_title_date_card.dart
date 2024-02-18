import 'package:flutter/material.dart';

import '../../../navigation/router/router.dart';
import '../../../navigation/routes/route/home/home_detail_route.dart';

class ImageTitleDateCard extends StatelessWidget {
  const ImageTitleDateCard({
    required this.title,
    required this.date,
    required this.index,
    super.key,
    this.width,
  });

  final String title;
  final String date;
  final double? width;

  final int index;

  // FIXME: 不要だけどHeroを使用したいので一旦追加

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: index,
          child: Material(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(20),
            child: Ink.image(
              image: const NetworkImage(
                'https://images.unsplash.com/photo-1588099768550-4014589e03e0?q=80&w=3127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
              ),
              fit: BoxFit.cover,
              width: double.maxFinite,
              child: InkWell(
                onTap: () => HomeDetailRoute(index: index).go(context),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 8,
            bottom: 8,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                title,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                date,
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
