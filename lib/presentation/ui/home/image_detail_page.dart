import 'package:flutter/material.dart';

class ImageDetailPage extends StatelessWidget {
  const ImageDetailPage({
    required this.index,
    super.key,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('画像'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share),
          ),
        ],
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Hero(
                tag: index,
                child: Image.network(
                  'https://images.unsplash.com/photo-1588099768550-4014589e03e0?q=80&w=3127&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                  fit: BoxFit.cover,
                  width: double.maxFinite,
                  height: 300,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '基本情報',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: '撮影日時',
                      data: '2023/04/01',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      'カメラ',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'メーカー',
                      data: 'Canon',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'モデル',
                      data: 'EOS 6D',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '写真',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: '露出',
                      data: '4169/250000',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'ISO感度',
                      data: '2074',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'オートフォーカス',
                      data: 'EF24-105mm f/4L IS USM',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'ホワイトバランス',
                      data: 'Auto',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: '測光',
                      data: 'CenterWeightedAverage',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: '画像サイズ',
                      data: '320✖️320',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'フラッシュ',
                      data: '使用していない',
                    ),
                    const SizedBox(height: 16),
                    const Text(
                      '場所',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: '住所',
                      data: '神奈川県横浜市神奈川区1204-11',
                    ),
                    const SizedBox(height: 16),
                    const _TitleDataColumn(
                      title: 'マップ',
                      data: '',
                    ),
                    Container(
                      width: double.maxFinite,
                      height: 200,
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: const Text('ここにGoogleMapを表示する'),
                    ),
                    const SizedBox(height: 24),
                    Align(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text('削除する'),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _TitleDataColumn extends StatelessWidget {
  const _TitleDataColumn({
    required this.title,
    required this.data,
  });

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          data,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            color: Colors.grey,
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
