import 'package:flutter/material.dart';

class GetNameDialog extends StatelessWidget {
  final Function(String) onSubmitted;
  final TextEditingController _controller = TextEditingController();
  GetNameDialog({super.key, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text("Name it"),
            TextField(
              controller: _controller,
              autofocus: true,
              onSubmitted: onSubmitted,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text("Cancel"),
                ),
                TextButton(
                  onPressed: () => onSubmitted(_controller.value.text),
                  child: const Text("OK"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
