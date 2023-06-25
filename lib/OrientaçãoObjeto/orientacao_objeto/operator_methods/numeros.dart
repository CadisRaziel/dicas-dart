class Numeros {
  int i;
  Numeros(
    this.i,
  );

  Numeros operator +(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  //?ao inves de fazer assim \/, eu posso fazer assim /\ e deixar um pouco mais natural visivemlente
  Numeros soma(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator -(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator >(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator <(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator >=(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator <=(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator %(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator /(Numeros numero2) {
    return Numeros(i + numero2.i);
  }

  Numeros operator *(Numeros numero2) {
    return Numeros(i + numero2.i);
  }
}
