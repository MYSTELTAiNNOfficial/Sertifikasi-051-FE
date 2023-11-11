part of 'services.dart';

class CustomerService {
  static Future<List<Customer>> getCustomers(token) async {
    var url = Uri.parse('http://192.168.244.122/read-allcustomer.php');
    var response = await http.get(url, headers: {HttpHeaders.contentTypeHeader: "application/json", "Authorization": "Bearer $token"});
    print(response.statusCode);
    if (response.statusCode == 200) {
      List<Customer> customers = [];
      var body = jsonDecode(response.body);
      for (var item in body) {
        customers.add(Customer.fromJson(item));
      }
      return customers;
    } else {
      throw Exception('Gagal mendapatkan data customer');
    }
  }

  static Future<Customer> getCustomer(int id, String token) async {
    var url = Uri.parse('http://192.168.244.122/read-customer.php');
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var body = jsonEncode({'id_customer': id});
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      return Customer.fromJson(response.body);
    } else {
      throw Exception('Gagal mendapatkan data customer');
    }
  }

  static Future<Message> addCustomer(String namaCustomer, String alamat,
      String noTelepon, String token) async {
    var url = Uri.parse('http://192.168.244.122/add-customer.php');
    var headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $token'
    };
    var body = jsonEncode({
      'nama_customer': namaCustomer,
      'alamat': alamat,
      'no_telepon': noTelepon
    });
    var response = await http.post(url, headers: headers, body: body);
    if (response.statusCode == 200) {
      return Message.fromJson(response.body);
    } else {
      throw Exception('Gagal menambahkan data customer');
    }
  }
}
