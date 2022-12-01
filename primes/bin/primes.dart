import 'dart:io';

import 'package:args/args.dart';
import 'package:primes/primes.dart' as primes;

const _num = 'num';

void main(List<String> arguments) {
  final parser = ArgParser()..addOption(_num, abbr: 'n', mandatory: true);

  ArgResults results = parser.parse(arguments);

  final numberOptional = int.tryParse(results[_num]);

  if (numberOptional == null) {
    print('Failed parsing {${results[_num]}} as an integer');
    exit(exitCode);
  }

  final number = numberOptional;

  if (number.isNegative) {
    print('Negative number input');
    exit(exitCode);
  }

  if (number == 0) {
    print('Zero is not valid');
    exit(exitCode);
  }

  print('Primes in number range of {$number}:\n${primes.primes(number)}');
}
