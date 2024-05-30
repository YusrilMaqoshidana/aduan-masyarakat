import 'package:flutter/material.dart';

Widget alert(
  VoidCallback onPressedValid,
  VoidCallback onPressedInvalid,
) {
  return SizedBox(
    height: 60,
    child: AlertDialog(
      backgroundColor: Colors.white,
      title: const Center(child: Text('Validasi')),
      content: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 280,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ElevatedButton(
                onPressed: onPressedValid,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Background color
                  foregroundColor: Colors.black, // Text color
                  side: const BorderSide(color: Colors.grey, width: 1), // Border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Remove rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14), // Padding
                ),
                child: const Text('Verifikasi: Informasi VALID'),
              ),
            ),
            Container(
              width: 280,
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.grey),
              ),
              child: ElevatedButton(
                onPressed: onPressedInvalid,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white, // Background color
                  foregroundColor: Colors.black, // Text color
                  side: const BorderSide(color: Colors.grey, width: 1), // Border
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0), // Remove rounded corners
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 14), // Padding
                ),
                child: const Text('Verifikasi: Informasi INVALID'),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
