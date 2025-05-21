import 'package:flutter/material.dart';
import 'package:novodom_ds/core/novodom_theme.dart';

class UserAvatar extends StatelessWidget {
  const UserAvatar({
    super.key,
    this.avatarUrl,
  });

  final String? avatarUrl;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 22,
      backgroundImage:
          Image.asset(NovodomTheme(context).assetsTheme.userPic).image,
      foregroundImage: Image.network(avatarUrl ?? '').image,
    );
  }
}
