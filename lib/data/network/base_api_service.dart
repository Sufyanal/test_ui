import 'dart:io';

import 'package:test_ui/data/app_exception.dart';
import 'package:test_ui/data/network/network_api_service.dart';
import 'package:http/http.dart' as http;
import 'package:test_ui/res/appurl/appurl.dart';

class NetworkApiServices extends BaseApiServices {
  var header = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
    'x-api-key': AppUrl.api_key,
  };

  @override
  Future<dynamic> getApi(String url) async {
    try {
      final response = await http
          .get(Uri.parse(url), headers: header)
          .timeout(const Duration(seconds: 10));
      
    return response.body;
    }   on SocketException {
      throw InternetException('Internet Conection');
    } on TimeOutException {
      throw TimeOutException('Loading');
    }
    } 
  }

