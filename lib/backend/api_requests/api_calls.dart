import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GenerateDeductibleExpensesCall {
  static Future<ApiCallResponse> call() {
    final body = '''
{
     "model": "gpt-3.5-turbo",
     "messages": [{"role": "user", "content": "'asre,afafas,asdfasfads,adfasdf,a,asdfasdfafas,asdfasfa,asdfasfas' among these words, return me top five words in order that has long length"}],
     "temperature": 0.7
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateDeductibleExpenses ',
      apiUrl: 'https://api.openai.com/v1/chat/completions',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class GetOauthTokenCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}",
  "client_id": "zr_YCgSJum6ziULn2KX-ICAGX977Ue_2Z2KCY_lleWE",
  "grant_type": "password",
  "domain": "frollolabs"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'getOauthToken',
      apiUrl: 'https://frollolabs-staging.frollo.us/oauth/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UserRegisterToFrolloCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
    String? givenName = '',
    String? familyName = '',
  }) {
    final body = '''
{
  "email": "${email}",
  "password": "${password}",
  "given_name": "${givenName}",
  "family_name": "${familyName}",
  "client_id": "zr_YCgSJum6ziULn2KX-ICAGX977Ue_2Z2KCY_lleWE"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userRegisterToFrollo',
      apiUrl: 'https://frollolabs-staging.frollo.us/api/v2/user/register',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'X-Api-Version': '2.21',
        'X-Bundle-Id': 'FLW V1.177.1',
        'X-Device-Version': 'web2.0.0',
        'X-Software-Version': '1.177.1',
        'Accept': '*/*',
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
