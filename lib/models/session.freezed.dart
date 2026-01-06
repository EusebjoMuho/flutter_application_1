// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'session.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  String get patientId => throw _privateConstructorUsedError;
  String get therapistId => throw _privateConstructorUsedError;
  DateTime get startTime => throw _privateConstructorUsedError;
  DateTime? get endTime => throw _privateConstructorUsedError;
  SessionStatus get status => throw _privateConstructorUsedError;
  SessionType get type => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get recordingUrl => throw _privateConstructorUsedError;

  /// Serializes this Session to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call({
    String id,
    String patientId,
    String therapistId,
    DateTime startTime,
    DateTime? endTime,
    SessionStatus status,
    SessionType type,
    double? price,
    String? recordingUrl,
  });
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? therapistId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? status = null,
    Object? type = null,
    Object? price = freezed,
    Object? recordingUrl = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as String,
            patientId: null == patientId
                ? _value.patientId
                : patientId // ignore: cast_nullable_to_non_nullable
                      as String,
            therapistId: null == therapistId
                ? _value.therapistId
                : therapistId // ignore: cast_nullable_to_non_nullable
                      as String,
            startTime: null == startTime
                ? _value.startTime
                : startTime // ignore: cast_nullable_to_non_nullable
                      as DateTime,
            endTime: freezed == endTime
                ? _value.endTime
                : endTime // ignore: cast_nullable_to_non_nullable
                      as DateTime?,
            status: null == status
                ? _value.status
                : status // ignore: cast_nullable_to_non_nullable
                      as SessionStatus,
            type: null == type
                ? _value.type
                : type // ignore: cast_nullable_to_non_nullable
                      as SessionType,
            price: freezed == price
                ? _value.price
                : price // ignore: cast_nullable_to_non_nullable
                      as double?,
            recordingUrl: freezed == recordingUrl
                ? _value.recordingUrl
                : recordingUrl // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
    _$SessionImpl value,
    $Res Function(_$SessionImpl) then,
  ) = __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String patientId,
    String therapistId,
    DateTime startTime,
    DateTime? endTime,
    SessionStatus status,
    SessionType type,
    double? price,
    String? recordingUrl,
  });
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
    _$SessionImpl _value,
    $Res Function(_$SessionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? patientId = null,
    Object? therapistId = null,
    Object? startTime = null,
    Object? endTime = freezed,
    Object? status = null,
    Object? type = null,
    Object? price = freezed,
    Object? recordingUrl = freezed,
  }) {
    return _then(
      _$SessionImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as String,
        patientId: null == patientId
            ? _value.patientId
            : patientId // ignore: cast_nullable_to_non_nullable
                  as String,
        therapistId: null == therapistId
            ? _value.therapistId
            : therapistId // ignore: cast_nullable_to_non_nullable
                  as String,
        startTime: null == startTime
            ? _value.startTime
            : startTime // ignore: cast_nullable_to_non_nullable
                  as DateTime,
        endTime: freezed == endTime
            ? _value.endTime
            : endTime // ignore: cast_nullable_to_non_nullable
                  as DateTime?,
        status: null == status
            ? _value.status
            : status // ignore: cast_nullable_to_non_nullable
                  as SessionStatus,
        type: null == type
            ? _value.type
            : type // ignore: cast_nullable_to_non_nullable
                  as SessionType,
        price: freezed == price
            ? _value.price
            : price // ignore: cast_nullable_to_non_nullable
                  as double?,
        recordingUrl: freezed == recordingUrl
            ? _value.recordingUrl
            : recordingUrl // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl({
    required this.id,
    required this.patientId,
    required this.therapistId,
    required this.startTime,
    this.endTime,
    required this.status,
    required this.type,
    this.price,
    this.recordingUrl,
  });

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String id;
  @override
  final String patientId;
  @override
  final String therapistId;
  @override
  final DateTime startTime;
  @override
  final DateTime? endTime;
  @override
  final SessionStatus status;
  @override
  final SessionType type;
  @override
  final double? price;
  @override
  final String? recordingUrl;

  @override
  String toString() {
    return 'Session(id: $id, patientId: $patientId, therapistId: $therapistId, startTime: $startTime, endTime: $endTime, status: $status, type: $type, price: $price, recordingUrl: $recordingUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.patientId, patientId) ||
                other.patientId == patientId) &&
            (identical(other.therapistId, therapistId) ||
                other.therapistId == therapistId) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            (identical(other.endTime, endTime) || other.endTime == endTime) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.recordingUrl, recordingUrl) ||
                other.recordingUrl == recordingUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    id,
    patientId,
    therapistId,
    startTime,
    endTime,
    status,
    type,
    price,
    recordingUrl,
  );

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(this);
  }
}

abstract class _Session implements Session {
  const factory _Session({
    required final String id,
    required final String patientId,
    required final String therapistId,
    required final DateTime startTime,
    final DateTime? endTime,
    required final SessionStatus status,
    required final SessionType type,
    final double? price,
    final String? recordingUrl,
  }) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  String get patientId;
  @override
  String get therapistId;
  @override
  DateTime get startTime;
  @override
  DateTime? get endTime;
  @override
  SessionStatus get status;
  @override
  SessionType get type;
  @override
  double? get price;
  @override
  String? get recordingUrl;

  /// Create a copy of Session
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
