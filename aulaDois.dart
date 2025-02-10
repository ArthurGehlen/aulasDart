// Null Safety

void main() {
  // String nome; **Isso vai dar erro pois o dart tem "null safety", ou seja, não deixa o valor de uma variável ser nulo**
  // print(nome);

  // String? nome; **Agora vai dar certo pois coloquei o "?" depois do tipo da variável, e, isso faz com que o programa deixe o valor ser nulo,
  // print(nome);    ou seja eu estou forçando a variável a receber valor nulo**

  // String? nome; **Colocar a exclamação depois de chamar o nome da variável para saber se é um valor nulo (Isso vai dar erro)**
  // print(nome!);

  // late String nome; **Isso diz que eu posso usar a variável depos, porém nunca posso atribuir valor null para a varável nome**
  // nome = "Arthur";
  // print(nome);
  // nome = null; **Isso vai dart erro por conta desta linha**
}