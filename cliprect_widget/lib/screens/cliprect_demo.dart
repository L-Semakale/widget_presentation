import 'package:flutter/material.dart';

class ClipRectDemo extends StatefulWidget {
  const ClipRectDemo({super.key});

  @override
  State<ClipRectDemo> createState() => _ClipRectDemoState();
}

class _ClipRectDemoState extends State<ClipRectDemo>
    with TickerProviderStateMixin {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    final String title = isExpanded ? "Iran Military" : "National Symbol";
    final String caption = isExpanded
        ? "Everyone will feel it"
        : "Symbol of unity and pride";

    return Scaffold(
      appBar: AppBar(
        title: const Text('ClipRect Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),

              // Animated container that grows/shrinks
              AnimatedSize(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: SizedBox(
                  height: isExpanded ? 250 : 120,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/iran_flag.jpg',
                        width: 300,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(
                        caption,
                        style: const TextStyle(
                          color: Colors.redAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 30),

              ElevatedButton(
                onPressed: () {
                  setState(() {
                    isExpanded = !isExpanded;
                  });
                },
                child: Text(isExpanded ? 'Collapse View' : 'Reveal More'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
