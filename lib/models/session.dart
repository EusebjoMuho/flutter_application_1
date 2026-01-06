import 'package:freezed_annotation/freezed_annotation.dart';

part 'session.freezed.dart';
part 'session.g.dart';

enum SessionStatus { booked, cancelled, completed }
enum SessionType { video, audio, text }

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required String patientId,
    required String therapistId,
    required DateTime startTime,
    DateTime? endTime,
    required SessionStatus status,
    required SessionType type,
    double? price,
    String? recordingUrl,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) => _$SessionFromJson(json);
}
