void main() {
  final numberParts = NumberToWord.partList("200000000.055");
  final mainNumber = numberParts.$1;
  final subNumber = numberParts.$2;
  final mainNumberLen = NumberToWord.formatListInGroups(mainNumber);
  final mapData= NumberToWord.listToMapDAta(mainNumberLen!);

  // List<List<String>> inputList = [
  //   ['2', '0'],
  //   ['0', '0'],
  //   ['0', '0'],
  //   ['0', '0', '0']
  // ];
  //
  // Map<int, String> outputDict = {};
  // for (int i = 0; i < inputList.length; i++) {
  //   outputDict[i + 1] = inputList[i].join("");
  // }

  // print(outputDict);



  print(mapData);
}

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

  static Map<int, dynamic> listToMapDAta(List listData) {
    Map<int, dynamic> mapData = {};

    for (int i = 0; i < listData.length; i++) {
      mapData[i + 1] = listData[i].join('');
    }

    return mapData;
  }


}
