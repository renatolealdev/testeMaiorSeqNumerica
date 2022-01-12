import 'dart:math';

void main() {
  final String numeroInformado = 1267378901.toString();
  obterMaxSequencia(numeroInformado);
}

obterMaxSequencia(String numInfo) {
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
  print(resultadoFinal.reduce(min));
}
