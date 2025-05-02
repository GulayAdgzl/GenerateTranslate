import 'package:flutter/material.dart';
import 'package:generate_image/controller/translate_controller.dart';
import 'package:get/get.dart';

class HistoryPage extends StatelessWidget {
  final TranslateController _c = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Çeviri Geçmişi')),
      body: Obx(() {
        if (_c.history.isEmpty) {
          return const Center(child: Text('Henüz geçmiş yok.'));
        }

        return ListView.builder(
          itemCount: _c.history.length,
          itemBuilder: (context, index) {
            final item = _c.history[index];
            return ListTile(
              title: Text(item.originalText),
              subtitle: Text(item.translatedText),
              trailing: IconButton(
                icon: const Icon(Icons.delete),
                onPressed: () => _c.deleteHistoryItem(index),
              ),
            );
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: _c.clearHistory,
        child: const Icon(Icons.delete_forever),
        tooltip: 'Tüm geçmişi sil',
      ),
    );
  }
}
