part of 'models.dart';

class Customer extends Equatable {
  final int? id;
  final String? namaCustomer;
  final String? alamat;
  final String? noTelepon;

  const Customer({this.id, this.namaCustomer, this.alamat, this.noTelepon});

  factory Customer.fromMap(Map<String, dynamic> data) => Customer(
        id: data['id'] as int?,
        namaCustomer: data['nama_customer'] as String?,
        alamat: data['alamat'] as String?,
        noTelepon: data['no_telepon'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'nama_customer': namaCustomer,
        'alamat': alamat,
        'no_telepon': noTelepon,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Customer].
  factory Customer.fromJson(String data) {
    return Customer.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Customer] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, namaCustomer, alamat, noTelepon];
}
