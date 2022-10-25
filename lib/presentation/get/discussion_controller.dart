import 'package:edspert_chat/data/model/chat_item.dart';
import 'package:edspert_chat/data/repository/chat_repository.dart';
import 'package:get/get.dart';

class DiscussionController extends GetxController {
  final ChatRepository _chatRepository;

  DiscussionController({
    required ChatRepository chatRepository,
  }) : _chatRepository = chatRepository;

  final _messages = Rx<List<ChatItem>>([]);
  final _isLoadingMessages = false.obs;

  List<ChatItem> get messages => _messages.value;
  bool get isLoadingMessages => _isLoadingMessages.value;

  @override
  void onReady() async {
    super.onReady();
    await retrieveMessages;
  }

  Future<void> get retrieveMessages async {
    _isLoadingMessages.value = true;
    final values = await _chatRepository.messages;
    await Future.delayed(const Duration(seconds: 2));
    _messages.value = values;
    _isLoadingMessages.value = false;
  }
}
