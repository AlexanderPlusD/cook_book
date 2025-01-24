import 'package:flutter/material.dart';

class EffectsScreen extends StatelessWidget {
  const EffectsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Effects'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(16.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        itemCount: _effectsList.length,
        itemBuilder: (context, index) {
          final effect = _effectsList[index];
          return _buildEffectCard(
            context,
            title: effect['title']!,
            icon: effect['icon'] as IconData,
            destination: effect['destination'] as Widget,
          );
        },
      ),
    );
  }

  Widget _buildEffectCard(
    BuildContext context, {
    required String title,
    required IconData icon,
    required Widget destination,
  }) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => destination),
        );
      },
      child: Card(
        elevation: 4.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 40.0, color: Colors.deepPurple),
              const SizedBox(height: 16.0),
              Text(
                title,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final List<Map<String, dynamic>> _effectsList = [
  {
    'title': 'Download Button',
    'icon': Icons.download,
    'destination': const DownloadButtonExample(),
  },
  {
    'title': 'Nested Navigation Flow',
    'icon': Icons.navigation,
    'destination': const NestedNavigationExample(),
  },
  {
    'title': 'Shimmer Loading Effect',
    'icon': Icons.hourglass_empty,
    'destination': const ShimmerEffectExample(),
  },
  {
    'title': 'Staggered Menu Animation',
    'icon': Icons.menu,
    'destination': const StaggeredMenuExample(),
  },
  {
    'title': 'Typing Indicator',
    'icon': Icons.chat_bubble_outline,
    'destination': const TypingIndicatorExample(),
  },
  {
    'title': 'Expandable FAB',
    'icon': Icons.add_circle_outline,
    'destination': const ExpandableFabExample(),
  },
  {
    'title': 'Gradient Chat Bubbles',
    'icon': Icons.gradient,
    'destination': const GradientChatBubblesExample(),
  },
  {
    'title': 'Drag UI Element',
    'icon': Icons.drag_indicator,
    'destination': const DragUIElementExample(),
  },
];

// Replace the examples with your actual classes
class DownloadButtonExample extends StatelessWidget {
  const DownloadButtonExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Download Button')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Downloading...')),
            );
          },
          child: const Text('Download'),
        ),
      ),
    );
  }
}

// Similar placeholder for other classes
class NestedNavigationExample extends StatelessWidget {
  const NestedNavigationExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Nested Navigation')),
      body: const Center(child: Text('Nested Navigation Placeholder')),
    );
  }
}

class ShimmerEffectExample extends StatelessWidget {
  const ShimmerEffectExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Shimmer Effect')),
      body: const Center(child: Text('Shimmer Effect Placeholder')),
    );
  }
}

class StaggeredMenuExample extends StatelessWidget {
  const StaggeredMenuExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Staggered Menu Animation')),
      body: const Center(child: Text('Staggered Menu Animation Placeholder')),
    );
  }
}

class TypingIndicatorExample extends StatelessWidget {
  const TypingIndicatorExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Typing Indicator')),
      body: const Center(child: Text('Typing Indicator Placeholder')),
    );
  }
}

class ExpandableFabExample extends StatelessWidget {
  const ExpandableFabExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expandable FAB')),
      body: const Center(child: Text('Expandable FAB Placeholder')),
    );
  }
}

class GradientChatBubblesExample extends StatelessWidget {
  const GradientChatBubblesExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gradient Chat Bubbles')),
      body: const Center(child: Text('Gradient Chat Bubbles Placeholder')),
    );
  }
}

class DragUIElementExample extends StatelessWidget {
  const DragUIElementExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Drag UI Element')),
      body: const Center(child: Text('Drag UI Element Placeholder')),
    );
  }
}
