import 'package:edspert_chat/presentation/get/discussion_binding.dart';
import 'package:edspert_chat/presentation/pages/discussion_page.dart';
import 'package:example/main_page.dart';
import 'package:get/get.dart';

final appPages = [
  GetPage(
    name: MainPage.routeName,
    page: () => const MainPage(),
  ),
  GetPage(
    name: DiscussionPage.routeName,
    page: () => const DiscussionPage(),
    binding: DiscussionBinding(),
  ),
];
