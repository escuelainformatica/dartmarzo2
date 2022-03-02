import 'dart:convert';

main() {

  var json='''[20,30,40]''';

  List<dynamic> listado=jsonDecode(json);
  List<int> listadoEntero=listado.map((e) => (e as int)).toList();
  print(listado);

  int total=listado.fold(0, (total, e) => total+(e as int));
  print("el total es :$total");

  int total2=listadoEntero.fold(0, (total, e) => total+e);
  print("el total es :$total2");

}