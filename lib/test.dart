void main() {
  int n = 123;

    int number = 1230405010101058500;

  if (number % 1000 != 0) {
    print("True");
  } else {
    print("False");
  }

  // print(number% 10 != 0);/**/

  // print('${(number % 1000)}');
  print("--------------- ~/ Start--------------");
  // print('10: ${(number ~/ 10)}');
  // print('100: ${(number ~/ 100)}');
  // print('1000: ${(number ~/ 1000)}');
  // print('10000: ${(number ~/ 10000)}');

  print("--------------- ~/ End--------------");

  print("--------------- % Start--------------");

  // print('10: ${(number  % 1)}');
  // print('10: ${(number % 10)}');
  // print('100: ${(number % 100)}');
  // print('1000: ${(number % 1000)}');
  // print('10000: ${(number % 10000)}');

  print("--------------- % End--------------");

  print(numberToWords(number));

  print(" pargantage: ${number % 1000}");

  // int number = 1234567;
  while (number > 0) {
    if (number % 1000 != 0) {
      // String segment = helper(number % 1000);
      // print(segment);
      print("Segment Number: ${number % 1000}");
    }
    // print("Wh: ${number}");
    number ~/= 1000 ;
  }
}





String numberToWords(int number) {
  if (number == 0) return 'zero';

  final units = [
    '',
    'one',
    'two',
    'three',
    'four',
    'five',
    'six',
    'seven',
    'eight',
    'nine',
  ];
  final teens = [
    'ten',
    'eleven',
    'twelve',
    'thirteen',
    'fourteen',
    'fifteen',
    'sixteen',
    'seventeen',
    'eighteen',
    'nineteen',
  ];
  final tens = [
    '',
    '',
    'twenty',
    'thirty',
    'forty',
    'fifty',
    'sixty',
    'seventy',
    'eighty',
    'ninety',
  ];
  final thousands = ['', 'thousand', 'million', 'billion', "trillion", "quadrillion", "quintillion"];

  String helper(int n) {
    if (n == 0) return '';
    if (n < 10) return units[n];
    if (n < 20) return teens[n - 10];
    if (n < 100) {
      return tens[n ~/ 10] + (n % 10 != 0 ? ' ' + helper(n % 10) : '');
    }
    if (n < 1000) {
      return units[n ~/ 100] +
          ' hundred' +
          (n % 100 != 0 ? ' ' + helper(n % 100) : '');
    }
    return '';
  }

  String result = '';
  int i = 0;

  while (number > 0) {
    if (number % 1000 != 0) {
      String segment = helper(number % 1000);
      // print(segment);
      print("Segment: ${number % 1000}");
      result =
          segment +
          (thousands[i].isNotEmpty ? ' ' + thousands[i] : '') +
          (result.isNotEmpty ? ' ' + result : '');
    }
    number ~/= 1000;
    // print("Final ${number ~/= 1000}");
    i++;
  }

  return result.trim();
}


