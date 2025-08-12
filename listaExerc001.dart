import "dart:io";

/* PRIMEIRO BLOCO - Condicionais e Repetição */

double subtrairDespesa(double saldoInicial, double despesa) {
    return saldoInicial - despesa;
}

String classificacaoDespesa(double despesa) {
    if(despesa <= 100) {
        return "baixa";
    } else if ( despesa <= 500){
        return "média";
    } else {
        return "alta";
    }
}

double somarCincoValores() {
    double soma = 0;

    for (int i = 0; i < 5; i++) {
        stdout.write("Digite o valor ${i + 1}: ");
        double valor = double.parse(stdin.readLineSync()!);
        soma += valor;
    }

    return soma;
}

int acimaDuzentos() {
    int contador = 0;

    for (int i = 0; i < 5; i++) {
        stdout.write("Digite o valor ${i + 1}: ");
        double valor = double.parse(stdin.readLineSync()!);

        if(valor > 200){
            contador++;
        }
    }
    
    return contador;
}

double enlaceWhile() {
    double soma = 0;
    double valor = 1; 

    while(valor != 0){
        stdout.write("Digite os valores a serem somados. Se quiser sair, digite 0 (zero).: ");
        valor = double.parse(stdin.readLineSync()!);
        soma += valor;
    }
    return soma - 1; 
}

double enlaceDoWhile() {
    double soma = -1;
    double valor = 0; 

    do {
        stdout.write("Digite os valores a serem somados. Se quiser sair, digite 0 (zero).: ");
        valor = double.parse(stdin.readLineSync()!);
        soma += valor;
    } while (valor != 0);

    return soma;
}

String opcoesSwitch(int opcao) {

    switch (opcao) {
        case 1:
            return "Alimentação";
        case 2:
            return "Transporte";
        case 3:
            return "Outros";
        default:
            throw ArgumentError("Opção inválida: $opcao");
    }
}

String retornoSubtracaoDespesa(double saldo, double despesa){

}


void main() {

    /*
    1. 

    stdout.write("Digite o valor da sua despesa: ");
    var despesa = stdin.readLineSync()!; // ! para Null Safaty

    var retorno = (despesa == 0 ) ? "Zero" : "O valor é de: $despesa";
    print(retorno);
    */

    /*
    2.
    stdout.write("Limite de conta: ");
    double limite = double.parse(stdin.readLineSync()!);
    stdout.write("Valor despesa: ");
    double despesa = double.parse(stdin.readLineSync()!);

    var retorno = (despesa > limite) ? "Valor de despesa ultrapassa o limite de $limite." : "Recebido.";
    print(retorno);
    */

    /*
    3.
    stdout.write("Saldo inicial: ");
    double saldoInicial = double.parse(stdin.readLineSync()!);
    stdout.write("Despesa: ");
    double despesa = double.parse(stdin.readLineSync()!);

    var resultado = subtrairDespesa(saldoInicial, despesa);
    print("Saldo Final: $resultado");
    */

    /*
    4.
    stdout.write("Digite o total da sua despesa: ");
    double despesa = double.parse(stdin.readLineSync()!);

    var resultado = classificacaoDespesa(despesa);
    print("Classificação de despesa: $resultado");
    */

    /*
    5.
    double total = somarCincoValores();
    print("A soma total dos depositos foi de: $total");
    */

    /*
    6.
    int total = acimaDuzentos();
    print("Quantidade de despesas acima de 200.00: $total");
    */

    /*
    7.
    double total = enlaceWhile();
    print("Soma total dos depositos resultou: $total");
    */

    /*
    8.
    double total = enlaceDoWhile();
    print("Soma total dos depositos resultou: $total");
    */

    /*
    9.
    String valor = opcoesSwitch(1);
    print("A opção escolhida foi: $valor");
    */

}