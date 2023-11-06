import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp() );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(debugShowCheckedModeBanner: false,
      home: MyAnimationPage(),
    );
  }
}

class MyAnimationPage extends StatefulWidget {
  const MyAnimationPage({super.key});

  @override
  _MyAnimationPageState createState() => _MyAnimationPageState();
}

class _MyAnimationPageState extends State<MyAnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController
  _controller; // Add "late" keyword to indicate it's non-nullable.
  late Animation<double>
  _animation; // Add "late" keyword to indicate it's non-nullable.

  @override
  void initState() {
    super.initState();

    // Initialize the AnimationController
    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    );

    // Create a Tween to define the range of values for the animation
    _animation = Tween<double>(begin: 0, end: 6).animate(_controller);

    // Start the animation
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: GestureDetector(
              onTap: () {
                _controller.forward();
              },
              child: const Text('Flutter Animation')),
          actions: [
            GestureDetector(
              onTap: () {
                dispose();
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.grey,
              ),
            ),
            GestureDetector(
                onTap: () {
                  _controller.reverse();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.yellow,
                )),
            GestureDetector(
                onTap: () {
                  _controller.reset();
                },
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.green,
                )),
          ],
        ),
        body: Column(
          children: [
            Center(
              child: AnimatedBuilder(
                animation: _controller,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: Container(
                      width: 100,
                      height: 100,
                      color: Colors.blue,
                    ),
                  );
                },
              ),
            ),
            GestureDetector(
              onTap: () {
                _controller.stop();
              },
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
            )
          ],
        ),
        );
    }
}