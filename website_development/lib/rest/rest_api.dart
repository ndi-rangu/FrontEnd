// import 'dart:convert';

// import 'package:http/http.dart' as http;
// import 'package:website_development/Const/utils.dart';

// Future userLogin(String email, String Password) async{
//   final response = await http.post('${Utils.baseUrl}/login',
//   headers: {"Accept": "Application/json"},
//   body: {'email':email,'password':Password}
//   );

//   var decodeData = jsonDecode(response.body);
//   return decodeData;
// }