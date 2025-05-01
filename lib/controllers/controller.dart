// import 'package:new_test/constants/bangla_constants.dart';
//
// class NumberTo2Word {
//   NumberTo2Word._();
//
//   static String numberPosition(String number) {
//     final n = double.parse(number);
//
//     final parts = number.split(".");
//     final firstPart = int.parse(parts[0]);
//     int lenPart = firstPart.toString().length;
//
//     if (firstPart >= 1000 && firstPart <= 99999) {
//       final partNumbers = firstPart.toString().split("");
//       int partLen = partNumbers.length;
//       String numberAdd = "";
//       if (partLen == 4) {
//         String n = "";
//         if (int.parse(partNumbers[1]) > 0 ) {
//           for (var i = 1; i < partLen; i++) {
//             n += partNumbers[i];
//           }
//           numberAdd =
//               "${BanglaConstants.shoSingleUnits[int.parse(partNumbers[0])]} ${BanglaConstants.singleUnits[int.parse(n)]}";
//         } else {
//           numberAdd =
//               "${BanglaConstants.shoSingleUnits[int.parse(partNumbers[0])]} ${BanglaConstants.singleUnits[int.parse(partNumbers[lenPart - 1])]}";
//         }
//       }
//       return numberAdd;
//     } else {
//       return lenPart.toString();
//     }
//   }
//
//   static String number100to999(String number) {
//     final n = double.parse(number);
//
//     final parts = number.split(".");
//     final firstPart = int.parse(parts[0]);
//     int lenPart = firstPart.toString().length;
//
//     if (firstPart >= 100 && firstPart <= 999) {
//       final partNumbers = firstPart.toString().split("");
//       int partLen = partNumbers.length;
//       String numberAdd = "";
//       if (partLen == 3) {
//         String n = "";
//         if (int.parse(partNumbers[1]) > 0 ) {
//           for (var i = 1; i < partLen; i++) {
//             n += partNumbers[i];
//           }
//           numberAdd =
//               "${BanglaConstants.shoUnits[int.parse(partNumbers[0])]} ${BanglaConstants.singleUnits[int.parse(n)]}";
//         } else if (firstPart == 100 ||
//             firstPart == 200 ||
//             firstPart == 300 ||
//             firstPart == 400 ||
//             firstPart == 500 ||
//             firstPart == 600 ||
//             firstPart == 700 ||
//             firstPart == 800 ||
//             firstPart == 900) {
//           numberAdd = BanglaConstants.shoSingleUnits[int.parse(partNumbers[0])];
//         } else {
//           numberAdd =
//               "${BanglaConstants.shoUnits[int.parse(partNumbers[0])]} ${BanglaConstants.singleUnits[int.parse(partNumbers[lenPart - 1])]}";
//         }
//       }
//       return numberAdd;
//     } else {
//       return lenPart.toString();
//     }
//   }
//
//   static String number1to100Until(String number) {
//     final n = double.parse(number);
//
//     final parts = number.split(".");
//     final firstPart = int.parse(parts[0]);
//     if (firstPart <= 100) {
//       return BanglaConstants.singleUnits[firstPart];
//     } else {
//       return "";
//     }
//   }
//
//   static String numberCalculate(String number) {
//     final n = double.parse(number);
//
//     final parts = number.split(".");
//     final firstParts = int.parse(parts[0]);
//     if (firstParts >= 1000 && firstParts < 99999) {
//       return BanglaConstants.largeNumberUnits[0];
//     } else if (firstParts >= 100000 && firstParts < 9999999) {
//       return BanglaConstants.largeNumberUnits[1];
//     } else {
//       return BanglaConstants.largeNumberUnits[2];
//     }
//   }
// }
