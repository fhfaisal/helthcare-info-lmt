
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppHelperFunction {
  static Color? getColor(String value) {
    /// Define your product specific colors

    if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Green') {
      return Colors.green;
    } else if (value == 'Red') {
      return Colors.red;
    } else if (value == 'Blue') {
      return Colors.blue;
    } else if (value == 'Pink') {
      return Colors.pink;
    } else if (value == 'Grey') {
      return Colors.grey;
    } else if (value == 'Purple') {
      return Colors.purple;
    } else if (value == 'Black') {
      return Colors.black;
    }
    return null;
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  static void showAlert(String title, String message) {
    showDialog(
        context: Get.context!,
        builder: (context) => AlertDialog(title: Text(title), content: Text(message), actions: [
              TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: const Text('OK'),
              )
            ]));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return '${text.substring(0, maxLength)}...';
    } else {
      return text;
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize() {
    return MediaQuery.of(Get.context!).size;
  }

  static double screenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double screenWidth() {
    return MediaQuery.of(Get.context!).size.width;
  }

  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(i, i + rowSize > widgets.length ? widgets.length : 1 + rowSize);
      wrappedList.add(Row(children: rowChildren));
    }
    return wrappedList;
  }
  // static datePicker(BuildContext context, var value) async {
  //   DateTime? pickedDate = await showDatePicker(
  //       context: context,
  //       initialDate: DateTime.now(),
  //       firstDate: DateTime(1950),
  //       //DateTime.now() - not to allow to choose before today.
  //       lastDate: DateTime(2100));
  //   if (pickedDate != null) {
  //     print(pickedDate); //pickedDate output format => 2021-03-10 00:00:00.000
  //     String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
  //     print(formattedDate); //formatted date output using intl package =>  2021-03-16
  //     value.text = formattedDate;
  //   } else {}
  // }

  static copyClipboard(String text,BuildContext context){
    Clipboard.setData(ClipboardData(text: text))
        .then((_) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Copied to your clipboard $text')));
    });
  }
}
