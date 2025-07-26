import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum ToastType { warning, success }

void showCommonToast({
  required ToastType type,
  required String message,
  VoidCallback? onConfirm,
}) {
  if (type == ToastType.warning) {
    Get.defaultDialog(
      title: "Warning",
      titleStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
        color: Colors.black,
      ),
      content: Text(message, textAlign: TextAlign.center),
      radius: 10,
      confirm: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF84C000),
        ),
        onPressed: () {
          Get.back();
          if (onConfirm != null) {
            onConfirm();
          }
        },
        child: const Text("Confirm"),
      ),
      cancel: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.grey[300]),
        onPressed: () {
          Get.back();
        },
        child: const Text("Cancel", style: TextStyle(color: Colors.black)),
      ),
    );
  } else if (type == ToastType.success) {
    Get.snackbar(
      "Success",
      message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: Color(0xFF84C000),
      colorText: Colors.white,
      margin: const EdgeInsets.all(16),
      duration: const Duration(seconds: 2),
    );
  }
}
