part of 'models.dart';

class Petugas extends Equatable {
  final int? id;
  final String? user;
  final String? token;
  final bool? err;
  final String? message;

  const Petugas({this.id, this.user, this.token, this.err, this.message});

  factory Petugas.fromMap(Map<String, dynamic> data) => Petugas(
        id: data['id'] as int?,
        user: data['user'] as String?,
        token: data['token'] as String?,
        err: data['err'] as bool?,
        message: data['message'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'id': id,
        'user': user,
        'token': token,
        'err': err,
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Petugas].
  factory Petugas.fromJson(String data) {
    return Petugas.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Petugas] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, user, token, err, message];
}
