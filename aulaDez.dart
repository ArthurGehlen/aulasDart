import 'dart:convert';

// void main() {
//   String json = """
//     {
//       "usuario": "1arthurgehlen@gmail.com",
//       "senha": "123456",
//       "permisoes": [
//         "owner", "admin"
//       ]
//     }
//   """;

//   // print(json);

//   Map result_json = jsonDecode(json);

//   print(result_json);
//   print(result_json["usuario"]);
//   print(result_json["permisoes"][0]);
// }

void main() {
  Map mapa = {
    "nome": "Arthur",
    "password": 123456,
    "permissions": ["owner", "admin"]
  };

  var result = jsonEncode(mapa);

  print(result);
}
