import 'package:flutter/material.dart';

class InfoScreen extends StatelessWidget {
  InfoScreen({Key? key}) : super(key: key);

  final icon = [
    Icons.notifications_none,
    Icons.article_rounded,
    Icons.credit_card,
    Icons.flag_circle,
    Icons.airplane_ticket_outlined,
    Icons.drive_eta_outlined,
    Icons.star_border,
    Icons.check_box_outline_blank,
    Icons.check_circle_outline,
    Icons.language,
    Icons.article_outlined,
    Icons.info_outline
  ];

  final menuList = [
    '공지/이벤트',
    '이용기록',
    '결제수단 관리',
    '포인트',
    '쿠폰함',
    '차량 관리',
    '즐겨 찾는 장소 설정',
    '카카오미니 설정',
    '이벤트 수신 설정',
    '언어 설정',
    '약관 및 정책',
    '버전 정보'
  ];

  Widget _myInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(15, 30, 0, 10),
          child: Text(
            '내 정보',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 5, 15, 0),
              child: ClipOval(
                child: Image.network(
                  'https://i.pinimg.com/736x/95/85/0b/95850b42f0de018537b1d5878861d300.jpg',
                  width: 80,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('김고양', style: TextStyle(fontSize: 15)),
                SizedBox(height: 8),
                Text('+82 10-1234-5678', style: TextStyle(fontSize: 14)),
              ],
            ),
            const Spacer(),
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: Icon(Icons.arrow_forward_ios, size: 18),
            ),
          ],
        ),
        Row(
          children: [
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 5, 2, 5),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 3, 3, 0),
                                    child: Icon(Icons.bookmark,
                                        color: Colors.brown),
                                  ),
                                  SizedBox(width: 5),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Text('브론즈 등급',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(2, 5, 15, 5),
                child: Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: SizedBox(
                    height: 50,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(10, 3, 3, 0),
                                    child:
                                        Icon(Icons.star, color: Colors.amber),
                                  ),
                                  SizedBox(width: 5),
                                  Padding(
                                    padding: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    child: Text('나의 배지',
                                        style: TextStyle(fontSize: 15)),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Widget _menuList() {
    final items = List.generate(12, (index) {
      return ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(left: 15.0, top: 4),
          child: Icon(icon[index], color: Colors.black, size: 23),
        ),
        title: Text(menuList[index]),
        trailing: const Padding(
          padding: EdgeInsets.only(right: 15.0),
          child: Icon(Icons.arrow_forward_ios, size: 15),
        ),
      );
    });

    return SingleChildScrollView(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: items,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _myInfo(),
        _menuList(),
      ],
    );
  }
}
