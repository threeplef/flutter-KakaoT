import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final topBannerItems = [
    'https://www.bccard.com/images/individual/event/2019/07/event_2019070046_02.jpg',
    'https://image.winudf.com/v2/image1/Y29tLmtha2FvLnRheGkuZHJpdmVyX2Jhbm5lcl8xNTUzMjMyNjI0XzAyNg/banner.jpg?fakeurl=1&h=180&type=webp',
    'https://www.bccard.com/images/individual/event/2019/07/event_2019070046_02.jpg',
    'https://image.winudf.com/v2/image1/Y29tLmtha2FvLnRheGkuZHJpdmVyX2Jhbm5lcl8xNTUzMjMyNjI0XzAyNg/banner.jpg?fakeurl=1&h=180&type=webp',
  ];

  final bottomBannerItems = [
    '택시 에티켓, 모두를 위해 지켜요',
    '탄 만큼 내는 운전자 보험 출시!',
    '댕댕이, 고먐미 손님 외출메이트',
    '천안&아산시 바이크 상륙!',
    '항공권 필요하세요? 지금 예매!',
  ];

  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.indigo,
      child: ListView(
        children: [
          _topBanner(),
          _charge(),
          _vehicle(),
        ],
      ),
    );
  }

  Widget _topBanner() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
      ),
      items: topBannerItems.map((url) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: const EdgeInsets.all(5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(url, fit: BoxFit.cover),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _charge() {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(16), topRight: Radius.circular(16)),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(16, 3, 16, 16),
        child: Container(
          width: double.infinity,
          height: 45,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2),
          ),
          child: Row(
            children: const [
              Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 5, 0),
                child: Icon(Icons.check_circle, color: Colors.amber),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(5, 15, 10, 0),
                child: Text(
                  '미리 교통비충전!',
                  style: TextStyle(color: Colors.grey, fontSize: 15),
                ),
              ),
              Spacer(),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 3, 0),
                child: Text(
                  '충전 | 선물 | 무료적립🎉',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _bottomBanner() {
    return CarouselSlider(
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
      ),
      items: bottomBannerItems.map((i) {
        return Builder(
          builder: (BuildContext context) {
            return SizedBox(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(0.0),
                child: Center(
                  child: Text(i,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            );
          },
        );
      }).toList(),
    );
  }

  Widget _vehicle() {
    return Container(
      color: Colors.white,
      height: 580,
      child: Padding(
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.local_taxi, size: 40, color: Colors.black38),
                      SizedBox(height: 5),
                      Text('택시'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.local_taxi, size: 40),
                      SizedBox(height: 5),
                      Text('블랙'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.pedal_bike, size: 40, color: Colors.amber),
                      SizedBox(height: 5),
                      Text('바이크'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.adjust_rounded,
                          size: 40, color: Colors.blueAccent),
                      SizedBox(height: 5),
                      Text('대리'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.archive_rounded,
                          size: 40, color: Colors.orangeAccent),
                      SizedBox(height: 5),
                      Text('퀵/택배'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.local_taxi, size: 40, color: Colors.black54),
                      SizedBox(height: 5),
                      Text('렌터카'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.airplanemode_on, size: 40, color: Colors.blue),
                      SizedBox(height: 5),
                      Text('항공'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.local_parking,
                          size: 40, color: Colors.blueGrey),
                      SizedBox(height: 5),
                      Text('마이카'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.directions_bus,
                          size: 40, color: Colors.lightBlueAccent),
                      SizedBox(height: 5),
                      Text('시외버스'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.train, size: 40, color: Colors.indigoAccent),
                      SizedBox(height: 5),
                      Text('기차'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.directions_bus_filled_outlined,
                          size: 40, color: Colors.orange),
                      SizedBox(height: 5),
                      Text('셔틀'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.adb_rounded, size: 40, color: Colors.amber),
                      SizedBox(height: 5),
                      Text('미니언'),
                    ],
                  )
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.pets, size: 40),
                      SizedBox(height: 5),
                      Text('펫'),
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.people, size: 40),
                      SizedBox(height: 5),
                      Text('카풀'),
                    ],
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Column(
                      children: const [
                        Icon(Icons.local_taxi, size: 40),
                        SizedBox(height: 5),
                        Text('바이크'),
                      ],
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Column(
                      children: const [
                        Icon(Icons.local_taxi, size: 40),
                        Text('대리'),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              const Divider(height: 1, thickness: 1),
              _bottomBanner(),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: Row(
                      children: const [
                        Text('공지',
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        SizedBox(width: 10),
                        Text('카카오 T 항공 국제선 오픈'),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: Icon(Icons.arrow_forward_ios, size: 15),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
