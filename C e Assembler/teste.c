#include <stdio.h>

// funções (gosub/goto/blocos personalizados do scratch)
void imprime_hugo(void) {
  printf("eu sou hugo\n");
}

int main(void) {
  
  // inteiros
  int x = 10;
  // reais (ponto flutuante)
  float y = 3.14;
  // cadeias de caracteres (strings)
  char *texto = "teste do hugo";

  // imprime o valor de x
  /* comentário */
  printf("o valor de x é %d\n",x);
  printf("o valor de y é %.2f\n",y);
  printf("o valor de texto é %s\n",texto);

  imprime_hugo();
  
  return 0;
}