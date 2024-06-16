import 'package:flutter/material.dart';
import 'dart:async';

class LoadScreenPage extends StatefulWidget {
  const LoadScreenPage({super.key});

  @override
  State<LoadScreenPage> createState() => _LoadScreenPageState();
}

class _LoadScreenPageState extends State<LoadScreenPage> {
  Timer? _timer;
  bool _redirected = false;

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _startTimer();
  }

  void _startTimer() {
    _timer?.cancel();
    _redirected = false;
    _timer = Timer(const Duration(seconds: 5), () {
      if (mounted && !_redirected) {
        _redirected = true;
        Navigator.pushNamed(context, '/homepage');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff8A19D6),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 586,
              height: 586,
              child: Image.asset('assets/nubanklogo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
