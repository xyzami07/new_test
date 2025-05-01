class NumberToWord {
  NumberToWord._();

  /// Number Saparte  to list data output example: ['2', '0', '0', '1', '2', '2', '9', '0', '0']
  static (List<String>, List<String>) partList(String number) {
    final parts = number.split(".");
    // A number sparet a List output ['200122900', '055'];
    final mainNumbers = parts[0].split("");
    // mainNumbers each number sparet a List output ['2','0','0','1','2','2','9','0','0'];
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

  /// List to map data convet outPut {1: "20", 2: "01", 3: "22", 4: "900"}
  static Map<int, dynamic> listToMapDAta(List listData) {
    Map<int, dynamic> mapData = {};
    for (int i = 0; i < listData.length; i++) {
      mapData[i + 1] = listData[i].join('');
    }

    return mapData;
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
