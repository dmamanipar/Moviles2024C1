// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'usuario_api.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _UsuarioApi implements UsuarioApi {
  _UsuarioApi(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://script.googleusercontent.com';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<User>> listar() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<User>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/macros/echo?user_content_key=WkVeBvJVxFzu-T-JW01WAkG8jqHl9kYvy-fUuYLdDCSRBxnlQN50_olZ5JgtkkXpMRmH_uYe2TGJUbl9wE04CcUOzQbOakRJm5_BxDlH2jW0nuo2oDemN9CCS2h10ox_1xSncGQajx_ryfhECjZEnEZcbUQkwbusgDQQ3Mt_92cX9wsJi8A7iwIz__zUFcsofLaP_dZqBrgFdpu4JVg-uNremeslhs12DXsYHhjFYooDFe9RUYq8wA&lib=MzxA4Yo3wn-hllwVyoXgREXxXveXX26VG',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(
                baseUrl: _combineBaseUrls(
              _dio.options.baseUrl,
              baseUrl,
            ))));
    var value = _result.data!
        .map((dynamic i) => User.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(
    String dioBaseUrl,
    String? baseUrl,
  ) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
