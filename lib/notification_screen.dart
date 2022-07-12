import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  NotificationScreen({Key? key}) : super(key: key);
  final notice = [
    '택시 7회 배지를 획득했습니다.',
    '이번 달 총 이용 횟수는?',
    '카카오T 블루 이용 방법',
    '여기 갈 일 없으세요?',
    '택시 1회 배지를 획득했습니다.',
    '카카오 T 항공 국제선 예매 OPEN!',
    '진짜 급할 땐 퀵 급송으로 칼배송!',
    '카카오 T 서비스 이용약관 개정 안내',
    '[이벤트] 전기차 오너를 위한 충전비 지원',
    '댕냥이와 외출할 땐? 카카오T 펫!',
    'DB손해보험 X 카카오내비',
    '대리 불러서 안전하게 들어가세요~',
    '씽씽 킥보드 운영지역 변경 안내',
    '[이벤트] 미니언즈2 예매 이벤트',
    '내 차 점검은? 마이카 탭에서',
    '어서오세요, 카카오 택시는 처음이죠?'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _notification(),
    );
  }

  Widget _notification() {
    return ListView.builder(
      itemCount: notice.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.white38,
            child: SizedBox(
              height: 50,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top:2,left: 12),
                    child: Icon(Icons.circle_notifications, color: Colors.indigo),
                  ),
                  const SizedBox(width: 10),
                  Text(notice[index]),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
