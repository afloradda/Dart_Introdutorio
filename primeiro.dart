void main(){
    print('Olá Dart!!!');

    // Linguagem tipada, entretanto ao usar a palavra reservada 'var' 
    // podemos subtituir o tipo da sintaxe <tipo> nomeDaVariavel = <valor>
    // porquê o dart vai avaliar o valor atribuido.
    var n1 = 1;

    print(n1.runtimeType);
    print(n1 is int);

    // No caso de constantes utilizamos a palavra reservada 'final'
    final double raio = double.parse(“87.76”);

    // Outra forma de definir uma constante é usando a palavra const. 
    // Vamos usar o const sempre que já sabemos o valor da constante e usamos o final quando o primeiro conteúdo é criado em tempo de execução.
    const pi = 3.14;

    

}