void main() {
  var x = twoSum([3, 2, 4, 3], 6);
  print(x);
}

///Preciso encontrar o indice de 2 numeros da minha lista 'sums' que ao soma-los eu tenho o numero 'target'
///imagine o seguinte [70, 20 , 2 7, 15] - Target = 9
///os indices que ao soma-lo da 9 são os indices 2 e 3
///o problema se resume a encontrar o indice dos numeros que ao soma-lo da o resultado do target
List<int> twoSum(List<int> nums, int target) {
  int elementoAtual;
  int complemento;

  if (nums.isNotEmpty) {
    for (int i = 0; i < nums.length; i++) {
      ///Percorrendo a lista de array e descobrindo elemento atual
      elementoAtual = nums[i];

      ///Descobrindo o complemento do elementoAtual em relação ao target (O complemento é o número que, quando somado ao "elemento atual", resulta no target)
      complemento = target - elementoAtual;

      ///Aqui eu preciso comparar meu 'nums' com o meu complemento
      for (int j = 0; j < nums.length; j++) {
        if (j != i && nums[j] == complemento) {
          // Encontrou o complemento, retorne os índices
          return [i, j];
        }
      }
    }
  }

  return [];
}
