import 'package:basicwidget/components/circle_image.dart';
import 'package:flutter/material.dart';

import '../components/components.dart';
import '../models/models.dart';

class FriendPostTile extends StatelessWidget {
  final Post post;

  const FriendPostTile({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(
          imageProvider: AssetImage(post.profileImageUrl),
          imageRadius: 20,
        ),
        const SizedBox(width: 16),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(post.comment),
              Text(
                'hace ${post.timestamp} min. atras',
                style: TextStyle(fontWeight: FontWeight.w700),
              )
            ],
          ),
        ),
      ],
    );
  }
}
