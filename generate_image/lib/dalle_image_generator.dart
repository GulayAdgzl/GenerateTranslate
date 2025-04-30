import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class DalleImageGenerator extends StatefulWidget {
  @override
  State<DalleImageGenerator> createState() => _DalleImageGeneratorState();
}

class _DalleImageGeneratorState extends State<DalleImageGenerator> {
  String? imageUrl;
  final promptController = TextEditingController();

  Future<void> generateImage(String prompt) async {
    final apiKey = dotenv.env['OPENAI_API_KEY'];
    final url = Uri.parse("https://api.openai.com/v1/images/generations");

    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $apiKey',
      },
      body: jsonEncode({"prompt": prompt, "n": 1, "size": "512x512"}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      setState(() {
        imageUrl = data['data'][0]['url'];
      });
    } else {
      print("Hata: ${response.statusCode}");
      print(response.body);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DALL·E Görsel Üretimi")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: promptController,
              decoration: const InputDecoration(
                hintText: "Görsel için bir betimleme yazın...",
              ),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () => generateImage(promptController.text),
              child: const Text("Görsel Üret"),
            ),
            const SizedBox(height: 20),
            if (imageUrl != null) Image.network(imageUrl!)
          ],
        ),
      ),
    );
  }
}
