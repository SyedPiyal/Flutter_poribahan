import 'dart:convert';
import 'dart:developer' as dev;
import 'package:first_project/service/registration_request.dart';
import 'package:first_project/utils/utils_file.dart';
import 'package:http/http.dart' as http;

class NetworkServices {
  //get data form api
  Future getUserListFormApi(String url) async {
    http.Response response = await http.get(Uri.parse(url), headers: {
      "Content-Type": "application/json",
      "Accept": "application/json",
      'Authorization': 'Bearer ${userData.token}',
    });
    print(response.body);
    if (response.statusCode == 200) {
      print("data get");

      return (response.body);
    } else {
      print("data not get");
    }
  }

  //registration Screen data form api
  Future<dynamic> register(
      {required String url, required RegistrationRequest requestModel}) async {
    try {
      // var req = (request);
      // dev.log("request : ${req}");
      //
      // http.Response response = await http.post(
      //   Uri.parse("http://165.232.166.13/loginsystem/user-registration"),
      //   headers: {
      //     'Content-Type': 'application/json',
      //   },
      //   body: jsonEncode({
      //     "FullName": "piya",
      //     "ContactNumber": "01778598021",
      //     "UserName": "piya@gmail.com",
      //     "Gender": "Male",
      //     "Password": "123456"
      //   }),
      // );
      //
      // dev.log(response.statusCode.toString());
      // if (response.statusCode == 200) {
      //   dev.log("response : ${jsonDecode(response.body)}");
      //   return jsonDecode(response.body);
      // } else {
      //   dev.log("data not get");
      // }
      var headers = {
        'Content-Type': 'application/json',
      };
      var request = http.Request('POST',
          Uri.parse('http://165.232.166.13/loginsystem/user-registration'));
      request.body = json.encode(requestModel);
      request.headers.addAll(headers);

      http.StreamedResponse response = await request.send();

      if (response.statusCode == 200) {
        print(await response.stream.bytesToString());
      } else {
        print(response.reasonPhrase);
      }
    } catch (e) {
      dev.log("error: ${e.toString()}");
    }
  }
}
