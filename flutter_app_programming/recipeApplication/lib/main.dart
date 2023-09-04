import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Recipe App',
      home: RecipePage(),
    );
  }
}

class RecipePage extends StatelessWidget {
  const RecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('오늘 저녁 추천'),
      ),
      body: ListView(
        children: [
          Image.asset('assets/image01.jpg'),
          const TitleSection(),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconLabelRow(
                  label: '4인분',
                  inputColor: Colors.grey,
                  inputIcon: Icons.people,
                ),
                IconLabelRow(
                  label: '15min',
                  inputColor: Colors.grey,
                  inputIcon: Icons.alarm,
                ),
                IconLabelRow(
                  label: '아무나',
                  inputColor: Colors.grey,
                  inputIcon: Icons.star,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          const CookingOrderSection(),
        ],
      ),
    );
  }
}

class IconLabelRow extends StatelessWidget {
  const IconLabelRow({
    super.key,
    required this.label,
    required this.inputIcon,
    required this.inputColor,
  });

  final String label;
  final IconData inputIcon;
  final Color inputColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          inputIcon,
          color: inputColor,
        ),
        Container(
          margin: const EdgeInsets.only(left: 6),
          child: Text(
            label,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // title
          FittedBox(
            child: Text(
              '아스파라거스 토마토 구이 & 아스파라거스 마늘 볶음',
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 24,
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          // introduce
          Center(
            child: Text(
              '우리 남편 영양 간식 우리 아이 술안주',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class CookingOrderSection extends StatelessWidget {
  const CookingOrderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '조리 순서',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5,
                ),
                child: Text(
                  "1",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '[아스파라거스 토마토 구이] 아스파라거스는 4 ~ 5cm 길이로 자른다.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Image.asset(
                'assets/step01.jpg',
                width: MediaQuery.of(context).size.width * 0.3,
                fit: BoxFit.contain,
              ),
            ],
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: IconLabelRow(
              label: '아스파라거스 굵기는 상관 없습니다.',
              inputIcon: Icons.lightbulb,
              inputColor: Colors.teal,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: IconLabelRow(
              label: '라오메뜨 천연세라믹 양면도마',
              inputIcon: Icons.shopping_cart,
              inputColor: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
