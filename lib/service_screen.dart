import 'package:flutter/material.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _notification(),
    );
  }

  Widget _notification() {
    final items = List.generate(10, (index) {
      return const ListTile(
        leading: Icon(Icons.notifications_none),
        title: Text('[이벤트] 이것은 공지사항입니다'),
      );
    });
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: items,
    );
  }
}
