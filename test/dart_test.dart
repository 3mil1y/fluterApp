// 6 - Exercício para verificar se um número é primo

bool isPrime(int n, [int i = 2]) {
  if (n <= 2) {
    return (n == 2);
  }
  if (n % i == 0) {
    return false;
  }
  if (i * i > n) {
    return true;
  }
  return isPrime(n, i + 1);
}

//7 - Exercício para calcular a soma dos dígitos

int somaDigitos(int n) {
  if (n < 0) {
    throw ArgumentError('Número negativo não é permitido.');
  }

  int soma = 0;
  while (n > 0) {
    soma += n % 10; // Obtém o último dígito e soma
    n ~/= 10; // Remove o último dígito
  }

  return soma;
}

void main() {
  //6 - Exercício para verificar se um número é primo
  print('true = primo; false = não primo');
  print('${isPrime(1)} - numero 1');
  print('${isPrime(5)} - numero 5');
  print('${isPrime(7)} - numero 7');
  print('${isPrime(9)} - numero 9');
  print('${isPrime(10)} - numero 10');
  print('${isPrime(11)} - numero 11');
  print('${isPrime(2)} - numero 2');
  print('${isPrime(3)} - numero 3');
  print('${isPrime(4)} - numero 4');
  print('${isPrime(17)} - numero 17');
  print('${isPrime(18)} - numero 18');

  //7 - Exercício para calcular a soma dos dígitos
  print('');
  print('numero + soma');
  try {
    print('${somaDigitos(123)} - número 123'); // 1 + 2 + 3 = 6
    print('${somaDigitos(9876)} - número 9876'); // 9 + 8 + 7 + 6 = 30
    print('${somaDigitos(0)} - número 0'); // 0
    print('${somaDigitos(-45)} - número -45'); // Erro
  } catch (e) {
    print('Erro: $e');
  }
}
