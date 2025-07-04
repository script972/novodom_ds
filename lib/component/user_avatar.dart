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
    final theme = NovodomTheme(context);

    return CircleAvatar(
      radius: 22,
      backgroundImage: Image.asset(theme.assetsTheme.userPic).image,
      foregroundImage: (avatarUrl != null && avatarUrl!.trim().isNotEmpty)
          ? NetworkImage(avatarUrl!)
          : null,
    );
  }
}
