import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import 'package:hackdfw/globals.dart' as globals;

getQuestion() async {
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"query whatisQuestion {\\n    whatisQuestion {\\n        question\\n    }\\n}","variables":{}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var temp = json.decode(await response.stream.bytesToString());

    globals.question = temp["data"]["whatisQuestion"]["question"];

    // return "hey ";
  }
  else {
    globals.question = "Is water Wet?";
  }
}


Future<String> userById(userID) async {
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"query userByID (\$userID: String!) {\\n    userByID (userID: \$userID) {\\n        userID\\n        profile {\\n            firstName\\n            lastName\\n            age\\n            phoneNum\\n            birthDay\\n            gender\\n            bio\\n            city\\n            profilePic\\n        }\\n        todaysMatch\\n        longTermMatches\\n        lostMatches\\n        blockMatches\\n        dailyAnswer\\n        preference {\\n            ageRange\\n            gender\\n            location\\n            darkMode\\n            findMatchToday\\n        }\\n    }\\n}","variables":{"userID": "$userID"}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var temp = await response.stream.bytesToString();
    print(temp);
    return json.decode(temp);
  }
  else {
    print(response.reasonPhrase);
    return "Error";
  }
}