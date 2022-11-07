import 'package:flutter/material.dart';
import 'package:flutter_template/ui/extensions/context_extensions.dart';
import 'package:flutter_template/ui/theme/app_theme.dart';

class VideosScreen extends StatelessWidget {
  const VideosScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _VideosContentScreen();
  }
}

class _VideosContentScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'VIDEOS',
        style: TextStyle(color: context.theme.colors.onPrimary),
      ),
    );
  }
}