part of 'shared.dart';

class Const{
  String token = "";

  void setToken(token) {
    print(token);
    this.token = token;
    print(this.token);
  }

  String getToken() {
    return this.token;
  }
}