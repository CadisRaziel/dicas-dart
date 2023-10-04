void main() {
  /*
      Uma unicade de medida comum usada para expressar areas de terrenos de grandes dimensoes é o hectare,
      que equivale a 10 000m², um fazendeiro decide fazer um loteamento utilizando 3 hectares de sua fazenda,
      dos quais 0,9 hectares será usado para a construção de ruas e calçadas e o restante será dividido em 
      terrenos com area de 300m² cada um. os 20 primeiros terrenos vendidos terão preços promocionais de
      R$ 20.000,00 cada, e os demais de R$ 30.000,00 cada.

      Nas condições estabelecidas o valor total, em real,obtido pelo fazendeiro com a venda de todos os terrenos será igual a

      a) 700 000.
      b) 1 600 000.
      c) 1 900 000.
      d) 2 200 000.
      e) 2 800 000.

  */

  //!Info de observação
// 10 000m² = medida comum de 1 hectare
// 3 hectares = 30 000m²

//!info de desenvolvimento
// 0,9 hectares = usados para ruas e calçadads (ou seja como ele tem 3 hectares vai sobrar 2,1 hectares)
//? 10 000 * 2.1 = 21 000m² -> é o que sobra pra construção de terrenos

// 300m² = restante dos 0,9 hectares que serão terrenos com area de 300m² cada um
//? 21 000 / 300 = 70 terrenos -> pego a area que sobrou para os terrenos de divido pela quantitade de m² de cada um
//? posso cortas os 0 dessa conta e facilitar a vida -> 210 / 3 = 70 terrenos

// 20 primeiros terrenos serão vendidos por R$ 20.000,00 cada
// quando os 20 primeiros termiarem o restante sera vendido por R$ 30.000,00 cada
//!calculo
//? 20.000 * 20 + 30.000 * (50) -> 50 é o que sobrou de terrenos para vender deepois que vendeu os 20 primeiros
//! total dos 20 primeiros terrenos
//? 20.000 * 20 = 400.000 -> é o valor que o fazendeiro vai ganhar com a venda dos 20 primeiros terrenos
//! total dos 50 terrenos restantes
//? 30.000 * 50 = 1.500.000 -> é o valor que o fazendeiro vai ganhar com a venda dos 50 terrenos restantes
//! total dos 70 terrenos vendidos
//? 400.000 + 1.500.000 = 1.900.000 -> Alternativa C é o valor total que o fazendeiro vai ganhar com a venda dos terrenos

  //* 10 000m² = medida comum de 1 hectare
  double umHectare = 10.000;
  
  //* 0,9 para ruas e calçadas então sobre 2.1 para construção de terrenos
  double totalConstrucaoHectares = 2.1;

  //* Total em m² do que sobrea para construção de TERRENOS
  double totalConstrucaoTerrenos = umHectare * totalConstrucaoHectares; 
  print(totalConstrucaoTerrenos);

  //* tamanho do terreno
  double tamanhoTerrenoEmMetroQuadrado = 300;

  //* Total em TERRENOS para construção 
  double totalTerrenos = totalConstrucaoTerrenos / tamanhoTerrenoEmMetroQuadrado;
  print(totalTerrenos);

}
