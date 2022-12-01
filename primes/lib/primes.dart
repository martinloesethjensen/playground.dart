List<num> primes(int number) {
  return List.generate(number, (index) => index + 1)
      .where((element) => isPrime(element))
      .toList();
}

bool isPrime(num number, [num i = 2]) {
  if (number <= 1) return false;

  if (number == i) return true;

  if (number % i == 0) return false;

  i += 1;

  return isPrime(number, i);
}
