import 'package:flutter/material.dart';

import '../../widget/button/common_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          '設定',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w900,
            fontSize: 16,
          ),
        ),
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _Title(title: '基本情報'),
              ),
              _Tile(
                title: 'テーマ設定',
                icon: Icons.palette,
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              _Tile(
                title: '通知設定',
                icon: Icons.notifications_none,
                trailing: Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ),
              _Tile(
                title: 'プライバシーポリシー',
                icon: Icons.privacy_tip_outlined,
                onTap: () {},
              ),
              _Tile(
                title: '利用規約',
                icon: Icons.description_outlined,
                onTap: () {},
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _Title(title: 'データ管理'),
              ),
              _Tile(
                title: 'データ移行・復元',
                icon: Icons.sync_alt,
                onTap: () {},
              ),
              const _Tile(
                title: 'データ使用量',
                icon: Icons.data_usage,
                trailing: Text('2.12GB'),
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _Title(title: 'セキュリティ'),
              ),
              _Tile(
                title: 'パスワード設定',
                icon: Icons.lock_outline,
                trailing: const Icon(Icons.more_vert),
                onTap: () {},
              ),
              const SizedBox(height: 16),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: _Title(title: 'その他'),
              ),
              _Tile(
                title: 'お問い合わせ',
                icon: Icons.contact_support_outlined,
                onTap: () {},
              ),
              _Tile(
                title: 'レビュー',
                icon: Icons.rate_review,
                onTap: () {},
              ),
              const SizedBox(height: 52),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: CommonButton(
                  text: 'アカウント削除',
                  onTap: () {},
                ),
              ),
              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class _Title extends StatelessWidget {
  const _Title({
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}

class _Tile extends StatelessWidget {
  const _Tile({
    required this.title,
    required this.icon,
    this.onTap,
    this.trailing = const Icon(Icons.arrow_forward),
  });

  final String title;
  final IconData icon;
  final Widget trailing;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onTap,
      leading: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(icon),
      ),
      title: Text(
        title,
        style: const TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 14,
        ),
      ),
      trailing: trailing,
    );
  }
}
