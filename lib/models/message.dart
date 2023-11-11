part of 'models.dart';

class Message extends Equatable {
  final dynamic? err;
  final String? message;

  const Message({this.err, this.message});

  factory Message.fromMap(Map<String, dynamic> data) => Message(
        err: data['err'] as dynamic?,
        message: data['message'] as String?,
      );

  Map<String, dynamic> toMap() => {
        'err': err,
        'message': message,
      };

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Message].
  factory Message.fromJson(String data) {
    return Message.fromMap(json.decode(data) as Map<String, dynamic>);
  }

  /// `dart:convert`
  ///
  /// Converts [Message] to a JSON string.
  String toJson() => json.encode(toMap());

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [err, message];
}
