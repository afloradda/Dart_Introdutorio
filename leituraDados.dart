import "dart:io";

void main(){
    stdout.write("Digite seu nome: ");
    String nome = stdin.readLineSync()!; // ! para Null Safaty
    print("Olá, $nome!");
}