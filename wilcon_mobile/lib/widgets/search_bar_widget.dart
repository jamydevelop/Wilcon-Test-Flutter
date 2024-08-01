import 'package:flutter/material.dart';

class SearchBarWidget extends StatelessWidget {
  final String hintText;

  const SearchBarWidget({super.key, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0), // Padding of 12 pixels on all sides
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(8.0), // Updated border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue, // Color when focused
              width: 1.0, // Border width when focused
            ),
            borderRadius: BorderRadius.circular(8.0), // Updated border radius
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey, // Color when enabled
              width: 1.0, // Border width when enabled
            ),
            borderRadius: BorderRadius.circular(8.0), // Updated border radius
          ),
          suffixIcon: const Icon(
            Icons.search,
          ),
        ),
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
