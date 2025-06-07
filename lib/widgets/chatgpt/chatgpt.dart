import 'package:flutter/material.dart';

class ChatGPT extends StatefulWidget {
  const ChatGPT({super.key});

  @override
  State<ChatGPT> createState() => _ChatGPT();
}

class _ChatGPT extends State<ChatGPT> {
  final TextEditingController _controller = TextEditingController();

  // Example messages
  final List<Map<String, String>> _messages = [
    {'sender': 'user', 'text': 'Hello ChatGPT!'},
    {'sender': 'bot', 'text': 'Hi there! How can I assist you today?'},
    {'sender': 'user', 'text': 'Im Reza!'},
    {'sender': 'bot', 'text': 'Nice to meet you'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("ChatGPT Page")),
      body: Stack(
        children: [
          // 🔹 Background pattern
          Positioned.fill(
            child: Opacity(
              opacity: 0.05,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                itemCount: 200,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 10,
                ),
                itemBuilder: (context, index) => const Icon(Icons.chat),
              ),
            ),
          ),

          // 🔸 Foreground UI
          SafeArea(
            child: Column(
              children: [
                // 🟠 Chat messages list
                Expanded(
                  child: ListView.builder(
                    padding: const EdgeInsets.all(12),
                    itemCount: _messages.length,
                    itemBuilder: (context, index) {
                      final message = _messages[index];
                      final isUser = message['sender'] == 'user';

                      return Align(
                        alignment: isUser
                            ? Alignment.centerRight
                            : Alignment.centerLeft,
                        child: Container(
                          margin: const EdgeInsets.symmetric(vertical: 6),
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 14),
                          constraints: BoxConstraints(
                            maxWidth: MediaQuery.of(context).size.width * 0.7,
                          ),
                          decoration: BoxDecoration(
                            color: isUser
                                ? Colors.blueAccent
                                : Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(
                            message['text']!,
                            style: TextStyle(
                              color: isUser ? Colors.white : Colors.black87,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),

                // 🟡 Input field
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Type a message...",
                      prefixIcon: const Icon(Icons.message),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                ),

                // 🟢 Footer
                Container(
                  width: double.infinity,
                  color: Colors.blueGrey.shade100,
                  padding: const EdgeInsets.all(12),
                  child: const Text(
                    "ChatGPT footer bar",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
