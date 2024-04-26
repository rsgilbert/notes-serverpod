import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  const LoadingScreen({this.exception, required this.onTryAgain, super.key});

  final Exception? exception;
  final VoidCallback onTryAgain;

  @override
  Widget build(BuildContext context) {
    if (exception != null) {
      return Center(
          child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Error: $exception"),
                  const SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: onTryAgain,
                    child: const Text("Try again"),
                  ),
                ],
              )));
    } else {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }
  }
}
