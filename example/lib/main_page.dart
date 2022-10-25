import 'package:edspert_chat/presentation/pages/discussion_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainPage extends StatelessWidget {
  static const routeName = '/';
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List Features'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Diskusi Page'),
            subtitle: const Text(
                'https://www.figma.com/file/vht1hANiGM1sFld1zidoCG/Bootcamp-Flutter-Edspert?node-id=424%3A1935'),
            onTap: () => Get.toNamed(DiscussionPage.routeName),
          )
        ],
      ),
    );
  }
}
