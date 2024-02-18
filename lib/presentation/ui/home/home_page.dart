import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'widget/image_title_date_card.dart';

class HomePage extends HookConsumerWidget {
  HomePage({super.key});

  //画面に描画するデータリスト作成
  final List<String> texts = [
    'box1',
    'box2',
    'box3',
    'box4',
    'box5',
    'box6',
    'box7',
    'box8',
    'box9',
    'box10',
    'box11',
    'box12',
    'box13',
    'box14',
    'box15',
    'box16',
    'box17',
    'box18',
    'box19',
    'box20',
    'box21',
    'box22',
    'box23',
    'box24',
    'box25',
    'box26',
    'box27',
    'box28',
    'box29',
    'box30',
    'box31',
    'box32',
    'box33',
    'box34',
    'box35',
    'box36',
    'box37',
    'box38',
    'box39',
    'box40',
    'box41',
    'box42',
    'box43',
    'box44',
    'box45',
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            '写真一覧',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          bottom: const TabBar(
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: <Widget>[
              Tab(text: 'All'),
              Tab(text: 'Favorite'),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          ],
        ),
        body: Scrollbar(
          child: GridView.builder(
            padding: const EdgeInsets.all(20),
            itemCount: texts.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return ImageTitleDateCard(
                title: 'Side Kick Sneaker',
                date: '2023/06/21',
                width: size.width,
              );
            },
          ),
        ),
      ),
    );
  }
}
