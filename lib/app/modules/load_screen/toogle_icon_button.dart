import 'package:flutter/material.dart';

class ToggleIconButton extends StatefulWidget {
  const ToggleIconButton({super.key});

  @override
  State<ToggleIconButton> createState() => _ToggleIconButtonState();
}

class _ToggleIconButtonState extends State<ToggleIconButton> {
  bool _showText = false;

  void _toggleText() {
    setState(() {
      _showText = !_showText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.transparent,
          child: IconButton(
            onPressed: _toggleText,
            icon: const Icon(
              Icons.settings,
              color: Colors.white,
              size: 24,
            ),
          ),
        ),
        if (_showText)
          const Text(
            'Configurações',
            style: TextStyle(color: Colors.white),
          ),
      ],
    );
  }
}
