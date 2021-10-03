import 'dart:typed_data';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'dart:convert';
import 'package:hackdfw/globals.dart' as globals;

changeprefs(String id, int ageRange, String gender, String location, bool darkMode, bool findMatchToday) async {
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"mutation changePreferences (\$userID: String!, \$input: newPref) {\\n    changePreferences (userID: \$userID, input: \$input) {\\n        userID\\n        profile {\\n            firstName\\n            lastName\\n            age\\n            phoneNum\\n            birthDay\\n            gender\\n            bio\\n            city\\n            profilePic\\n        }\\n        todaysMatch\\n        longTermMatches\\n        lostMatches\\n        blockMatches\\n        dailyAnswer\\n        preference {\\n            ageRange\\n            gender\\n            location\\n            darkMode\\n            findMatchToday\\n        }\\n    }\\n}","variables":{"userID":"$id","input":{"ageRange":"$ageRange","gender":"$gender","location":"$location","darkMode":$darkMode,"findMatchToday":$findMatchToday}}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    return await response.stream.bytesToString();
  }
  else {
     return response.reasonPhrase;
  }

}

blockUser(String userID, String matchID) async{
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"mutation blockPerson (\$userID: String!, \$blockedID: String!) {\\n    blockPerson (userID: \$userID, blockedID: \$blockedID) {\\n        userID\\n        profile {\\n            firstName\\n            lastName\\n            age\\n            phoneNum\\n            birthDay\\n            gender\\n            bio\\n            city\\n            profilePic\\n        }\\n        todaysMatch\\n        longTermMatches\\n        lostMatches\\n        blockMatches\\n        dailyAnswer\\n        preference {\\n            ageRange\\n            gender\\n            location\\n            darkMode\\n            findMatchToday\\n        }\\n    }\\n}","variables":{"userID":"$userID","blockedID":"$matchID"}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}

matchWithUser(String userID, String MatchesID) async{
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"mutation matchWith (\$userid: String!, \$matchesID: String!) {\\n    matchWith (userid: \$userid, matchesID: \$matchesID) {\\n        userID\\n        profile {\\n            firstName\\n            lastName\\n            age\\n            phoneNum\\n            birthDay\\n            gender\\n            bio\\n            city\\n            profilePic\\n        }\\n        todaysMatch\\n        longTermMatches\\n        lostMatches\\n        blockMatches\\n        dailyAnswer\\n        preference {\\n            ageRange\\n            gender\\n            location\\n            darkMode\\n            findMatchToday\\n        }\\n    }\\n}","variables":{"userid":"$userID","matchesID":"$MatchesID"}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}

unMtahcWithUser(String userID, String MatchesID) async {
  var headers = {
    'Content-Type': 'application/json'
  };
  var request = http.Request('POST', Uri.parse('http://167.99.225.50:6969/query'));
  request.body = '''{"query":"mutation unmatchWith (\$userid: String!, \$matchesID: String!) {\\n    unmatchWith (userid: \$userid, matchesID: \$matchesID) {\\n        userID\\n        profile {\\n            firstName\\n            lastName\\n            age\\n            phoneNum\\n            birthDay\\n            gender\\n            bio\\n            city\\n            profilePic\\n        }\\n        todaysMatch\\n        longTermMatches\\n        lostMatches\\n        blockMatches\\n        dailyAnswer\\n        preference {\\n            ageRange\\n            gender\\n            location\\n            darkMode\\n            findMatchToday\\n        }\\n    }\\n}","variables":{"userid":"$userID","matchesID":"$MatchesID"}}''';

  request.headers.addAll(headers);

  http.StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    print(await response.stream.bytesToString());
  }
  else {
    print(response.reasonPhrase);
  }
}