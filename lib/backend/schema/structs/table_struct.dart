// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TableStruct extends BaseStruct {
  TableStruct({
    DateTime? startTime,
    DateTime? endTime,
    String? lessonName,
    String? lessonType,
    String? lessonRoom,
    String? teacher,
  })  : _startTime = startTime,
        _endTime = endTime,
        _lessonName = lessonName,
        _lessonType = lessonType,
        _lessonRoom = lessonRoom,
        _teacher = teacher;

  // "startTime" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  set startTime(DateTime? val) => _startTime = val;
  bool hasStartTime() => _startTime != null;

  // "endTime" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  set endTime(DateTime? val) => _endTime = val;
  bool hasEndTime() => _endTime != null;

  // "lessonName" field.
  String? _lessonName;
  String get lessonName => _lessonName ?? '';
  set lessonName(String? val) => _lessonName = val;
  bool hasLessonName() => _lessonName != null;

  // "lessonType" field.
  String? _lessonType;
  String get lessonType => _lessonType ?? '';
  set lessonType(String? val) => _lessonType = val;
  bool hasLessonType() => _lessonType != null;

  // "lessonRoom" field.
  String? _lessonRoom;
  String get lessonRoom => _lessonRoom ?? '';
  set lessonRoom(String? val) => _lessonRoom = val;
  bool hasLessonRoom() => _lessonRoom != null;

  // "teacher" field.
  String? _teacher;
  String get teacher => _teacher ?? '';
  set teacher(String? val) => _teacher = val;
  bool hasTeacher() => _teacher != null;

  static TableStruct fromMap(Map<String, dynamic> data) => TableStruct(
        startTime: data['startTime'] as DateTime?,
        endTime: data['endTime'] as DateTime?,
        lessonName: data['lessonName'] as String?,
        lessonType: data['lessonType'] as String?,
        lessonRoom: data['lessonRoom'] as String?,
        teacher: data['teacher'] as String?,
      );

  static TableStruct? maybeFromMap(dynamic data) =>
      data is Map ? TableStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'startTime': _startTime,
        'endTime': _endTime,
        'lessonName': _lessonName,
        'lessonType': _lessonType,
        'lessonRoom': _lessonRoom,
        'teacher': _teacher,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'startTime': serializeParam(
          _startTime,
          ParamType.DateTime,
        ),
        'endTime': serializeParam(
          _endTime,
          ParamType.DateTime,
        ),
        'lessonName': serializeParam(
          _lessonName,
          ParamType.String,
        ),
        'lessonType': serializeParam(
          _lessonType,
          ParamType.String,
        ),
        'lessonRoom': serializeParam(
          _lessonRoom,
          ParamType.String,
        ),
        'teacher': serializeParam(
          _teacher,
          ParamType.String,
        ),
      }.withoutNulls;

  static TableStruct fromSerializableMap(Map<String, dynamic> data) =>
      TableStruct(
        startTime: deserializeParam(
          data['startTime'],
          ParamType.DateTime,
          false,
        ),
        endTime: deserializeParam(
          data['endTime'],
          ParamType.DateTime,
          false,
        ),
        lessonName: deserializeParam(
          data['lessonName'],
          ParamType.String,
          false,
        ),
        lessonType: deserializeParam(
          data['lessonType'],
          ParamType.String,
          false,
        ),
        lessonRoom: deserializeParam(
          data['lessonRoom'],
          ParamType.String,
          false,
        ),
        teacher: deserializeParam(
          data['teacher'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TableStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TableStruct &&
        startTime == other.startTime &&
        endTime == other.endTime &&
        lessonName == other.lessonName &&
        lessonType == other.lessonType &&
        lessonRoom == other.lessonRoom &&
        teacher == other.teacher;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([startTime, endTime, lessonName, lessonType, lessonRoom, teacher]);
}

TableStruct createTableStruct({
  DateTime? startTime,
  DateTime? endTime,
  String? lessonName,
  String? lessonType,
  String? lessonRoom,
  String? teacher,
}) =>
    TableStruct(
      startTime: startTime,
      endTime: endTime,
      lessonName: lessonName,
      lessonType: lessonType,
      lessonRoom: lessonRoom,
      teacher: teacher,
    );
