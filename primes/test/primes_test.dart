import 'package:primes/primes.dart';
import 'package:test/test.dart';

void main() {
  group(primes, () {
    test(', 11 should be a valid prime', () {
      expect(isPrime(11), true);
    });

    test(', 0 or negative number should not be valid primes', () {
      expect(isPrime(0), false);
      expect(isPrime(-1), false);
      expect(isPrime(-1337), false);
    });

    test(', should return [2, 3, 5, 7, 11] as primes', () {
      expect(primes(11), [2, 3, 5, 7, 11]);
    });
  });
}
