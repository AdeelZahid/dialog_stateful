import 'dart:io';
import 'package:flutter/material.dart';
import 'package:statefuldialogs/widget/DialogBoxSingleActionBlurry.dart';
import 'package:statefuldialogs/widget/DropDownValue.dart';
import 'package:statefuldialogs/widget/PlateFormEnum.dart';
import 'package:intl/intl.dart';

class AppUtiles {
  static bool isDesktop() {
    bool isDesktop = false;
    if (Platform.isWindows || Platform.isMacOS || Platform.isLinux) {
      isDesktop = true;
    }
    return isDesktop;
  }

  static bool isInRow(context) {
    bool isInRow = false;
    isInRow = MediaQuery.of(context).size.width > 600 ? true : false;
    return isInRow;
  }

  static showSnackBar(context, String text) {
    var snackBar = SnackBar(content: Text('$text'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  static String getCurrentDate() {
    final now = new DateTime.now();
    return DateFormat('yMd').format(now);
  }

  static DateTime getCurrentDateDate() {
    return new DateTime.now();
  }

  static String dateToString(DateTime dateTime) {
    return DateFormat('yMd').format(dateTime);
  }

  static void hideKeyBoard(context) {
    // if (isMobilePlateForm())
    FocusScope.of(context).unfocus();
  }

  static bool isMobilePlateForm() {
    bool isMobilePlateForm = false;
    if (Platform.isAndroid) {
      isMobilePlateForm = true;
      // Android-specific code
    } else if (Platform.isIOS) {
      isMobilePlateForm = true;
      // iOS-specific code
    }
    return isMobilePlateForm;
  }

  static void printLog(String message) {
    print(message);
  }

  static PlatFormEnum getPlateForm(context) {
    PlatFormEnum platFormEnum;

    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 800) {
      platFormEnum = PlatFormEnum.mobile;
    } else if (screenWidth >= 800 && screenWidth < 1200) {
      platFormEnum = PlatFormEnum.tab;
    } else {
      platFormEnum = PlatFormEnum.window;
    }
    return platFormEnum;
  }

  static double getButtonHMarginPlatForm(context) {
    double margin;

    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 800) {
      margin = screenWidth / 40;
    } else if (screenWidth >= 800 && screenWidth < 1200) {
      margin = screenWidth / 35;
    } else {
      margin = screenWidth / 6;
    }
    return margin;
  }

  static double getButtonHMarginPlatFormHalfScreen(context) {
    double margin;

    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 800) {
      margin = screenWidth / 40;
    } else if (screenWidth >= 800 && screenWidth < 1200) {
      margin = screenWidth / 35;
    } else {
      margin = screenWidth / 22;
    }
    return margin;
  }

  static double getButtonHPadding(context) {
    double margin;

    double screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth < 800) {
      margin = 30;
    } else if (screenWidth >= 800 && screenWidth < 1200) {
      margin = 50;
    } else {
      margin = 70;
    }
    return margin;
  }

  static showDialogBoxSingleAction(
      {required BuildContext context,
      required Function function,
      required String title,
      required String content,
      String? btnText}) {
    DialogBoxSingleActionBlurry alert = DialogBoxSingleActionBlurry(
      title: title,
      content: content,
      btnText: btnText,
      continueCallBack: () {
        function();
      },
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  ///// show multi dialog
  // List<String> alertTitles = <String>["Delete"];
  // DialogBoxMultiAction(cancelTitle: "Cancel", alertTitle: "Confirmation",
  // alertDetailMessage: "Are you sure you want to delete",
  // alertActionTitles:alertTitles, onAlertAction:
  // (int selectedActionIndex){
  // print("${alertTitles[selectedActionIndex]} action performed");
  // }
  // ).show(context);

  static List<DropdownMenuItem<DropDownVal>> buildDropDownValDropdown(
      List DropDownValList) {
    List<DropdownMenuItem<DropDownVal>> items = [];
    for (DropDownVal dropDownVal in DropDownValList) {
      items.add(DropdownMenuItem(
        value: dropDownVal,
        child: Text(dropDownVal.name),
      ));
    }
    return items;
  }
}
