import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'dart:convert'; // Import for JSON encoding/decoding

import '../data/api_service.dart';

Future<List<ApiServiceResponse>> fetchDataFromAPI() async {
  String url = "https://api.restful-api.dev/objects";
  var dioClient = Dio();

  try {
    final response = await dioClient.get(url);
    if (kDebugMode) {
      print('Response data: ${response.data}');
    }

    if (response.statusCode == 200 && response.data != null) {
      // Convert the response data back to a JSON string, then parse it using your model
      String jsonString = json.encode(response.data);
      return apiServiceResponseFromJson(jsonString); // Corrected parsing
    } else {
      if (kDebugMode) {
        print('Unexpected status code or missing status_code in response: ${response.statusCode}, ${response.data}');
      }
      throw Exception('Unexpected response from server');
    }
  } on DioException catch (e) {
    if (kDebugMode) {
      print('DioException: ${e.type}, ${e.response}');
    }

    if (e.type == DioExceptionType.connectionError) {
      throw Exception("Your internet connection is unstable. Please re-check or try again later.");
    } else {
      throw Exception(e.response?.data["status"] ?? 'Unknown error');
    }
  } catch (e) {
    if (kDebugMode) {
      print('Unexpected error: $e');
    }
    throw e.toString();
  }
}
