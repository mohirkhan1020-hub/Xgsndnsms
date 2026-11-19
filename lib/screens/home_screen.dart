import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import 'details_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wevlo Home')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png', width: 64, height: 64),
              const SizedBox(height: 16),
              Text(
                'Counter: $_counter',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 20),
              CustomButton(
                label: 'Increment',
                onPressed: () => setState(() => _counter++),
              ),
              const SizedBox(height: 12),
              OutlinedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const DetailsScreen()),
                  );
                },
                child: const Text('Open Details Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}