import 'dart:math'; // import da Biblioteca math do Dart..

void main() {
// inicioalização da variável que recebe o número a ser analisado..
  final String numeroInformado = 1134567021640123456.toString();
// chamada da função que obterá a maior sequência dentro de número informado..
  obterMaxSequencia(numeroInformado);
}

// FUNÇÃO QUE RECEBE UMA STRINGCOMO PARÂMETRO..
obterMaxSequencia(String numInfo) {
//
  List convertStringEmListString = numInfo.split("");
  List<int> listInt = [];
  for (var element in convertStringEmListString) {
    listInt.add(int.parse(element));
  }
  List<int> resultadoFinal = [];
  List<dynamic> resultadoTempInt = [];
  List<String> resultadoTempString = [];
  var strTemp = null;

  listInt.forEach((element) {
    if (resultadoTempInt.length == 0) {
      resultadoTempInt.add(element);
    } else {
      if ((element == resultadoTempInt.last + 1) ||
          (element == 0 && resultadoTempInt.last == 9)) {
        resultadoTempInt.add(element);
      } else {
        for (var elemento in resultadoTempInt) {
          resultadoTempString.add(elemento.toString());
        }
        strTemp = resultadoTempString.join();
        resultadoFinal.add(int.parse(strTemp));
        resultadoTempInt.clear();
        resultadoTempString.clear();
        resultadoTempInt.add(element);
      }
    }
  });
  if (resultadoTempInt.length != 0) {
    for (var elementos in resultadoTempInt) {
      resultadoTempString.add(elementos.toString());
    }
    strTemp = resultadoTempString.join();
    resultadoFinal.add(int.parse(strTemp));
  }
  // resultadoFinal.reduce(max);
  print(resultadoFinal.reduce(max));
}
