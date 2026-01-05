import 'package:flutter/material.dart';
import 'package:folder/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap, this.isLoading = false});
  final void Function()? onTap;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 56,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isLoading
              ? SizedBox(
                  width: 24,
                  height: 24,
                  child: const CircularProgressIndicator(color: Colors.black),
                )
              : const Text(
                  'Add Note',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
        ),
      ),
    );
  }
}
