void main(){
  //!Processo sincrono, ele executa linha por linha independente do quao demorado for o que tiver nelas
  print("Iniciou o processo");
  var i = 0;
  while (i < 5){
    print(i);
    i++;
  }
  m2();
  print("finalizou");
}

void m2(){
  print("funçao 2");
}