import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        '이용서비스 페이지',
        style: TextStyle(
          fontSize: 40,
        ),
      ),
    );
  }
}
