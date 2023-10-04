// import 'dart:io';

// void main() {
//   var valor = double.parse(stdin.readLineSync()!);
//   var centavos = (valor * 100).toInt();

//   var notas = [10000, 5000, 2000, 1000, 500, 200];
//   var moedas = [100, 50, 25, 10, 5, 1];

//   var qtdNotas = List<int>.filled(notas.length, 0);
//   var qtdMoedas = List<int>.filled(moedas.length, 0);

//   for (var i = 0; i < notas.length; i++) {
//     qtdNotas[i] = centavos ~/ notas[i];
//     centavos %= notas[i];
//   }

//   for (var i = 0; i < moedas.length; i++) {
//     qtdMoedas[i] = centavos ~/ moedas[i];
//     centavos %= moedas[i];
//   }

//   print('NOTAS:');
//   for (var i = 0; i < notas.length; i++) {
//     print('${qtdNotas[i]} nota(s) de R\$ ${(notas[i] / 100).toStringAsFixed(2)}');
//   }

//   print('MOEDAS:');
//   for (var i = 0; i < moedas.length; i++) {
//     print('${qtdMoedas[i]} moeda(s) de R\$ ${(moedas[i] / 100).toStringAsFixed(2)}');
//   }
// }



// import 'dart:io';

// void main() {
//   var valorTotal = double.parse(stdin.readLineSync()!);
//   var valorItem = double.parse(stdin.readLineSync()!);
//   var troco = (valorTotal - valorItem) * 100;  // Calcular o troco em centavos

//   var notas = [10000, 5000, 2000, 1000, 500, 200];
//   var moedas = [100, 50, 25, 10, 5, 1];

//   var qtdNotas = List<int>.filled(notas.length, 0);
//   var qtdMoedas = List<int>.filled(moedas.length, 0);

//   for (var i = 0; i < notas.length; i++) {
//     qtdNotas[i] = troco ~/ notas[i];
//     troco %= notas[i];
//   }

//   for (var i = 0; i < moedas.length; i++) {
//     qtdMoedas[i] = troco ~/ moedas[i];
//     troco %= moedas[i];
//   }

//   print('NOTAS:');
//   for (var i = 0; i < notas.length; i++) {
//     print('${qtdNotas[i]} nota(s) de R\$ ${(notas[i] / 100).toStringAsFixed(2)}');
//   }

//   print('MOEDAS:');
//   for (var i = 0; i < moedas.length; i++) {
//     print('${qtdMoedas[i]} moeda(s) de R\$ ${(moedas[i] / 100).toStringAsFixed(2)}');
//   }
// }


import 'dart:io';

void main() {
  var valorTotal = double.parse(stdin.readLineSync()!);
  var valorItem = double.parse(stdin.readLineSync()!);
  var troco = (valorTotal - valorItem) * 100;  // Calcular o troco em centavos

  var notas = [10000, 5000, 2000, 1000, 500, 200];
  var moedas = [100, 50, 25, 10, 5, 1];

  var qtdNotas = List<int>.filled(notas.length, 0);
  var qtdMoedas = List<int>.filled(moedas.length, 0);

  for (var i = 0; i < notas.length; i++) {
    qtdNotas[i] = troco ~/ notas[i];
    troco %= notas[i];
  }

  for (var i = 0; i < moedas.length; i++) {
    qtdMoedas[i] = troco ~/ moedas[i];
    troco %= moedas[i];
  }

  print('NOTAS:');
  for (var i = 0; i < notas.length; i++) {
    var image = getImage(notas[i]);
    print('${qtdNotas[i]} nota(s) de R\$ ${(notas[i] / 100).toStringAsFixed(2)} $image');
  }

  print('MOEDAS:');
  for (var i = 0; i < moedas.length; i++) {
    var image = getImage(moedas[i]);
    print('${qtdMoedas[i]} moeda(s) de R\$ ${(moedas[i] / 100).toStringAsFixed(2)} $image');
  }
}

String getImage(int value) {
  // Aqui você pode implementar a lógica para retornar a imagem correspondente ao valor
  // Por exemplo, você pode ter um mapeamento dos valores para nomes de arquivos de imagem
  // e retornar o nome da imagem correspondente ao valor.
  
  // Neste exemplo, estou retornando um emoji correspondente ao valor.
  if (value >= 100) {
    return '💵'; // Emoji de nota
  } else {
    return '🪙'; // Emoji de moeda
  }
}
