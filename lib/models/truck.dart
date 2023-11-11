part of 'models.dart';

class Truck extends Kendaraan {
  final dynamic jumlahRoda;
  final dynamic luasAreaKargo;

  const Truck(
      {id,
      tipeKendaraan,
      model,
      manufaktur,
      tahunRilis,
      jumlahPenumpang,
      harga,
      this.jumlahRoda,
      this.luasAreaKargo})
      : super(
            id: id,
            tipeKendaraan: "truck",
            model: model,
            manufaktur: manufaktur,
            tahunRilis: tahunRilis,
            jumlahPenumpang: jumlahPenumpang,
            harga: harga);

  factory Truck.fromMap(Map<String, dynamic> data) => Truck(
        jumlahRoda: data['jumlah_roda'] as dynamic,
        luasAreaKargo: data['luas_area_kargo'] as dynamic,
      );

  @override
  Map<String, dynamic> toMap() => {
        'jumlah_roda': jumlahRoda,
        'luas_area_kargo': luasAreaKargo,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Truck].
  factory Truck.fromJson(String data) {
    return Truck.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Truck] to a JSON string.
  @override
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [jumlahRoda, luasAreaKargo];
}
