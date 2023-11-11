part of 'services.dart';

class AuthService {
  static Future<Petugas> login(String user, String password) async {
    var url = Uri.parse('http://192.168.244.122/login.php');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({'email': user, 'password': password});
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      Const token = Const();
      var data = Petugas.fromJson(response.body);
      token.setToken(data.token);
      return Petugas.fromJson(response.body);
    } else {
      throw Exception('Gagal login');
    }
  }

  static Future<Message> register(String user, String password,
      String namapetugas, String notelepon) async {
    var url = Uri.parse('http://192.168.244.122/register.php');
    var headers = {'Content-Type': 'application/json'};
    var body = jsonEncode({
      'email': user,
      'password': password,
      'nama_petugas': namapetugas,
      'notelp_petugas': notelepon
    });
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      return Message.fromJson(response.body);
    } else {
      throw Exception('Gagal register');
    }
  }
}
