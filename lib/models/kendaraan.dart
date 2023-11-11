part of 'models.dart';

class Kendaraan extends Equatable {
  final int? id;
  final String? tipeKendaraan;
  final String? model;
  final String? manufaktur;
  final String? tahunRilis;
  final String? jumlahPenumpang;
  final String? harga;

  const Kendaraan({
    this.id,
    this.tipeKendaraan,
    this.model,
    this.manufaktur,
    this.tahunRilis,
    this.jumlahPenumpang,
    this.harga,
  });

  factory Kendaraan.fromMap(Map<String, dynamic> data) => Kendaraan(
        id: data['id'] as int?,
        tipeKendaraan: data['tipe_kendaraan'] as String?,
        model: data['model'] as String?,
        manufaktur: data['manufaktur'] as String?,
        tahunRilis: data['tahun_rilis'] as String?,
        jumlahPenumpang: data['jumlah_penumpang'] as String?,
        harga: data['harga'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'tipe_kendaraan': tipeKendaraan,
        'model': model,
        'manufaktur': manufaktur,
        'tahun_rilis': tahunRilis,
        'jumlah_penumpang': jumlahPenumpang,
        'harga': harga,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Kendaraan].
  factory Kendaraan.fromJson(String data) {
    return Kendaraan.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Kendaraan] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props {
    return [
      id,
      tipeKendaraan,
      model,
      manufaktur,
      tahunRilis,
      jumlahPenumpang,
      harga,
    ];
  }
}
