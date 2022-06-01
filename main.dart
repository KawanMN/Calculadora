/* Kawan Novaes*/

import 'dart:io';

void main(List<String> arguments) {
  var operacao;
  
  //SAIDAS DE TEXTOS
  stdout.writeln('---------------------------------');
  stdout.writeln('      CALCULADORA SIMPLES        ');
  stdout.writeln('---------------------------------');
  stdout.writeln('Digite (+) para Soma.');
  stdout.writeln('Digite (-) para Subtração.');
  stdout.writeln('Digite (/) para Divisão.');
  stdout.writeln('Digite (*) para Multiplicação.');
  operacao = stdin.readLineSync();

  if (operacao == '+' ||
      operacao == '-' ||
      operacao == '/' ||
      operacao == '*') {
    //SAIDAS DE TEXTO
    stdout.writeln('Digite o primeiro valor: ');
    //ENTRADA VALOR 1 DIGITADADO
    num? input1 = num.parse(stdin.readLineSync()!);

    //SAIDAS DE TEXTO
    stdout.writeln('Digite o segundo valor: ');
    //ENTRADA VALOR 2 DIGITADO
    num? input2 = num.parse(stdin.readLineSync()!);

    //SWITCH CASE
    switch (operacao) {
      case '+':
        {
          //CHAMADA DO MÉTODO DE ACORDO COM A OPERAÇÃO
          num total = soma(input1, input2);
          //SAIDAS DE TEXTO TOTAL
          stdout.writeln('---------------------------------');
          stdout.writeln('Total: ${total}');
          stdout.writeln('---------------------------------');
        }
        break;
      case '-':
        {
          //CHAMADA DO MÉTODO DE ACORDO COM A OPERAÇÃO
          num total = subtracao(input1, input2);
          //SAIDAS DE TEXTO TOTAL
          stdout.writeln('---------------------------------');
          stdout.writeln('Total: ${total}');
          stdout.writeln('---------------------------------');
        }
        break;
      case '/':
        {
          //CHAMADA DO MÉTODO DE ACORDO COM A OPERAÇÃO
          num total = divisao(input1, input2);
          //SAIDAS DE TEXTO TOTAL
          stdout.writeln('---------------------------------');
          stdout.writeln('Total: ${total}');
          stdout.writeln('---------------------------------');
        }
        break;
      case '*':
        {
          //CHAMADA DO MÉTODO DE ACORDO COM A OPERAÇÃO
          num total = multiplicacao(input1, input2);
          //SAIDAS DE TEXTO TOTAL
          stdout.writeln('---------------------------------');
          stdout.writeln('Total: ${total}');
          stdout.writeln('---------------------------------');
        }
        break;
    }
  } else {
    print("Digite uma operação listada acima!");
  }

  main(arguments);
}

//MÉTODOS OPERACIONAIS
num soma(num input1, num input2) {
  num outputSoma = input1 + input2;
  return outputSoma;
}

num subtracao(num input1, num input2) {
  num outputSub = input1 - input2;
  return outputSub;
}

num divisao(num input1, num input2) {
  num outputDiv = input1 / input2;
  return outputDiv;
}

num multiplicacao(num input1, num input2) {
  num outputMult = input1 * input2;
  return outputMult;
}
