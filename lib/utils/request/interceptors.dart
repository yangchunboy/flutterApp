part of request;

class CustomInterceptors extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('REQUEST[${options.method}] => PATH: ${options.path}');
    return super.onRequest(options, handler);
  }
  Future? onResponse(Response response, ResponseInterceptorHandler handler) {
    try{
      Map<String, dynamic> responseData = jsonDecode(response.data.toString()) as Map<String, dynamic>;
      if (response.statusCode == 200) {
        if (responseData['code'] == 1000) {
          super.onResponse(response, handler);
          return null;
        } 
        else if (responseData['code'] == 1002) {
          Utils.navigatorKey.currentState!.pushNamedAndRemoveUntil('/login', (route) => route == null);
        }
        else {
          Utils.showToast(responseData['message'] as String);
          // throw(responseData['message']);
        }
      }
      return null;
    } catch(error) {
      throw(error);
    }
  }
  @override
  Future? onError(DioError err, ErrorInterceptorHandler handler) {
    // print('ERROR[${err.response?.statusCode}] => PATH: ${err.request.path}');
    super.onError(err, handler);
    return null;
  }
}