import 'dart:io';

/* SEGUNDO BLOCO - Estrutura de armazenamento List e Set */

bool presenteSet(Set<double> d, double valor){
    if(d.contains(valor)){
        return true;
    }

    return false;
}

double maiorValorList(List<double> d){
    double maior = 0;

    for(int i = 0; i < d.length; i++){
        if(maior < d[i]){
            maior = d[i];
        }
    }

    return maior;
}

List<double> ordenaList(List<double> d){
    List<double> ordenada = List.from(d);

    for(int i = 0; i < ordenada.length; i++){
        for(int j = 0; j < ordenada.length - 1 - i; j++){
            if(ordenada[j] > ordenada[j + 1]){
                double temp = ordenada[j];
                ordenada[j] = ordenada[j + 1];
                ordenada[j + 1] = temp;
            }
        }
    }

    return ordenada;
}

double encontraMenorValor(List<double> d){
    List<double> copia = List.from(d);

    for(int i = 0; i < copia.length; i++){
        for(int j = 0; j < copia.length - 1 - i; j++){
            if(copia[j] > copia[j + 1]){
                double temp = copia[j];
                copia[j] = copia[j + 1];
                copia[j + 1] = temp;
            }
        }
    }

    return copia[0];

}

void main() {
    // 11.
   List<double> despesas = [124.89, 100.00, 1080.00, 200.00, 30, 60.90, 27.90, 34.00];

   print(despesas);
   print(despesas.length);

   // 12.
   double soma = 0;
   for(int i = 0; i < despesas.length; i++) {
       soma += despesas[i];
   }
   print("O total de despesas somando cada indice do List foi de: $soma");

   // 13.
   List<double> maioresDespesas = [];
   for(int i = 0; i < despesas.length; i++) {
       if(despesas[i] > 100.00) {
           maioresDespesas.add(despesas[i]);
       }
   }
   print("As maiores despesas encontradas: $maioresDespesas");

   // 14.
   List<double> menoresDespesas = [];
   for(int i = 0; i < despesas.length; i++){
       if(despesas[i] <= 100.00){
           menoresDespesas.add(despesas[i]);
       }
   }
   print("As menores despesas encontradas: $menoresDespesas");

   // 15.
   Set<double> despesasSet = {124.89, 100.00, 1080.00, 200.00, 30, 60.90, 27.90, 34.00};
   despesasSet.add(1080.00);
   print(despesasSet);

   // 16.
   bool resultadoBool = presenteSet(despesasSet, 124.89);
   print(resultadoBool);

   // 17.
  print("=== Exercício 17 ===");

  Set<double> valores = {};

  // 1ª fase: inclusão
  double valor = -1;
  while (valor != 0) {
    stdout.write("Digite um número para incluir (0 para sair): ");
    valor = double.parse(stdin.readLineSync()!);

    if (valor != 0) {
      valores.add(valor);
      print("Lista atual: $valores");
    }
  }

  // 2ª fase: remoção
  valor = -1;
  while (valor != 0) {
    stdout.write("Digite um número para remover (0 para sair): ");
    valor = double.parse(stdin.readLineSync()!);

    if (valor != 0) {
      valores.remove(valor);
      print("Lista atual: $valores");
    }
  }

  print("Programa encerrado. Lista final: $valores");

  // 18.
  double resultado = maiorValorList(despesas);
  print("O maior valor encontrado dentro do vetor despesas: $resultado");

  // 19.
  List<double> numerosUm = [5, 1, 4, 2, 8];
  print(ordenaList(numerosUm));

  // 20.
  List<double> numerosDois = [5, 1, 4];
  print(encontraMenorValor(numerosDois));
}
