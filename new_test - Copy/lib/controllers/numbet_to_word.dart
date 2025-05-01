class NumberToWord {
  NumberToWord._();

  static (List<String>, List<String>) partList(String number) {
    final parts = number.split(".");
    final mainNumbers = parts[0].split("");
    final subNumbers = parts[1].split("");
    return (mainNumbers, subNumbers);
  }

  static List? formatListInGroups(List list) {
    // Input list length
    final listLen = list.length;
    if (listLen > 3) {
      // group list
      final listData = [];
      // if list length then even number then working below function.
      if (listLen % 2 != 0) {
        for (int i = 0; i < listLen - 3; i += 2) {
          // list data add for
          listData.add([list[i], list[i + 1]]);
        }
        // Create last Three Number
        List lastThreeNumber = list.sublist(listLen - 3);
        // last three number add
        listData.add(lastThreeNumber);

        /// return final list data
        return listData;
      } else {
        // single first data add list
        listData.add([list[0]]);
        for (int i = 1; i < listLen - 3; i += 2) {
          // list data add for
          listData.add([list[i], list[i + 1]]);
        }
        // Create last Three Number
        List lastThreeNumber = list.sublist(listLen - 3);
        // last three number add
        listData.add(lastThreeNumber);

        /// return final list data
        return listData;
      }
    } else {
      if (list.isNotEmpty) {
        // group list
        final listData = [];
        final tempData = [];
        for (int i = 0; i < listLen; i++) {
          tempData.add(list[i]);
        }
        listData.add(tempData);
        return listData;
      } else {
        return [];
      }
    }
  }


  static List? formatListInGroups2(List list) {
    // Input list length
    final listLen = list.length;
    // group list
    final listData = [];
    if (listLen < 3) {
      // if list length then even number then working below function.
      if (listLen % 2 != 0) {
        for (int i = 0; i < listLen - 3; i += 2) {
          // list data add for
          listData.add([list[i], list[i + 1]]);
        }
        // Create last Three Number
        List lastThreeNumber = list.sublist(listLen - 3);
        // last three number add
        listData.add(lastThreeNumber);

        /// return final list data
        return listData;
      } else {
        // single first data add list
        listData.add([list[0]]);
        for (int i = 1; i < listLen - 3; i += 2) {
          // list data add for
          listData.add([list[i], list[i + 1]]);
        }
        // Create last Three Number
        List lastThreeNumber = list.sublist(listLen - 3);
        // last three number add
        listData.add(lastThreeNumber);

        /// return final list data
        return listData;
      }
    } else {
      if (list.isNotEmpty) {
        final tempData = [];
        for (int i = 0; i < listLen; i++) {
          tempData.add(list[i]);
        }
        listData.add(tempData);
        return listData;
      } else {
        return [];
      }
    }
  }

  static String? convert(String number) {
    final convertToInt = double.parse(number);
    final numberParts = partList(convertToInt.toString());
    final mainNumber = numberParts.$1;
    final mainNumberLen = mainNumber.length;
    final subNumber = numberParts.$2;
    final List? mainNumberFormatList = formatListInGroups(mainNumber);
    final mainNumberFormatListLen = mainNumberFormatList!.length;

    if (mainNumberFormatListLen == 4) {
      for (int i = 0; i < mainNumberFormatListLen; i++) {

      }
    }

    return "";
  }
}

// final croreMax = [];
// final croreMin = [];
// final lakhMax = [];
// final lakhMin = [];
// final hazjarMax = [];
// final hazjarMin = [];
