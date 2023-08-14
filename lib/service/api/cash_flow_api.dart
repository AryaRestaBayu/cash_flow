import 'dart:convert';
import 'dart:io';

import 'package:cash_flow/constant/string_constant.dart';
import 'package:cash_flow/model/cash_flow.dart';
import 'package:cash_flow/service/secure_stroage_service.dart';
import 'package:http/http.dart' as http;

class CashFlowApi {
  final baseUrl = StringConstant.baseUrl;

  Future<List<CashFlow>> getCashFlow() async {
    final token =
        await SecureStorageService.readAuthToken(StringConstant.authToken);
    print(token);

    final response = await http.get(
      Uri.parse('$baseUrl/cashflows'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );

    if (response.statusCode == 200) {
      final List responseData = jsonDecode(response.body);
      final List<CashFlow> listCashFlow = responseData.map((cashFlowData) {
        return CashFlow.fromJson(cashFlowData);
      }).toList();
      return listCashFlow;
    } else {
      throw HttpException(
          'Gagal fetch data. Status code: ${response.statusCode}');
    }
  }

  Future<void> postCashFlow(CashFlow cashFlow) async {
    final token =
        await SecureStorageService.readAuthToken(StringConstant.authToken);

    final response = await http.post(Uri.parse('$baseUrl/cashflows'),
        headers: {
          'Content-Type': 'application/json',
          'Authorization': 'Bearer $token'
        },
        body: jsonEncode(cashFlow.toJson()));

    if (response.statusCode == 200) {
      print('sukses');
      print(response.body);
    } else {
      print('gagal');
      print(response.body);
    }
  }

  Future<void> deleteCashFlow(int id) async {
    final token =
        await SecureStorageService.readAuthToken(StringConstant.authToken);

    final response = await http.delete(
      Uri.parse('$baseUrl/cashflows=id?$id'),
      headers: {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token'
      },
    );

    print(response.statusCode);
  }
}
