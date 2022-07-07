import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  const InfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '내정보 페이지',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
