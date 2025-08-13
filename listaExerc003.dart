import 'dart:io';

/* TERCEIRO BLOCO - Estrutura de armazenamento Map */

void main() {
    // 21.
    Map<String, double> categorias = Map();

    // 22.
    categorias['Alimentação'] = 510.00;
    categorias['Alugel'] = 1210.00;
    categorias['Transporte'] = 345.00;

    print(categorias);
    print(categorias['Alugel']);

    // 23.
    categorias['Alimentação'] = 1200.00;
    print(categorias['Alimentação']);

    // 24.
    double soma = 0;

    for(var entry in categorias.entries) {
        soma += entry.value;
    }
    print("Soma das despesas atribuidas ao Map: $soma");

    // 25.
    List<String> categoriasAcima = [];

    for(var entry in categorias.entries) {
        if (entry.value > 1500.00) {
            categoriasAcima.add(entry.key);
        }
    }
    print(categoriasAcima);

    // 26.
    for (var entry in categorias.entries) {
        print("${entry.key}.");
    }

    // 27.
    for(var entry in categorias.entries) {
        print("${entry.value} reais.");
    }

    // 28.
    double somaMedia = 0;
    double media = 0;

    for(var entry in categorias.values) {
        somaMedia += entry;
        media = somaMedia / 3;
    }
    print(media);

    // 29.
    double maiorValor = 0;

    for(var entry in categorias.values) {
        if(maiorValor < entry){
            maiorValor = entry;
        }
    }
    print(maiorValor);

    // 30.
    Map<String, List<double>> categoriasInterna = {
        'Alimentação': [510, 340, 67],
        'Aluguel': [1210],
        'Transporte': [345, 78, 98, 43, 57]
    };

    categoriasInterna['Aluguel']?.add(60);

    categoriasInterna['Alimentação']?.remove(340);

    for(var entry in categoriasInterna.entries) {
        double total = entry.value.reduce((a, b) => a + b);
        print("${entry.key}: R\$ $total");
    }
}