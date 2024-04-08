// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CalendarStruct extends BaseStruct {
  CalendarStruct({
    DateTime? day,
    List<TableStruct>? tableList,
  })  : _day = day,
        _tableList = tableList;

  // "day" field.
  DateTime? _day;
  DateTime? get day => _day;
  set day(DateTime? val) => _day = val;
  bool hasDay() => _day != null;

  // "tableList" field.
  List<TableStruct>? _tableList;
  List<TableStruct> get tableList => _tableList ?? const [];
  set tableList(List<TableStruct>? val) => _tableList = val;
  void updateTableList(Function(List<TableStruct>) updateFn) =>
      updateFn(_tableList ??= []);
  bool hasTableList() => _tableList != null;

  static CalendarStruct fromMap(Map<String, dynamic> data) => CalendarStruct(
        day: data['day'] as DateTime?,
        tableList: getStructList(
          data['tableList'],
          TableStruct.fromMap,
        ),
      );

  static CalendarStruct? maybeFromMap(dynamic data) =>
      data is Map ? CalendarStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'day': _day,
        'tableList': _tableList?.map((e) => e.toMap()).toList(),
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'day': serializeParam(
          _day,
          ParamType.DateTime,
        ),
        'tableList': serializeParam(
          _tableList,
          ParamType.DataStruct,
          true,
        ),
      }.withoutNulls;

  static CalendarStruct fromSerializableMap(Map<String, dynamic> data) =>
      CalendarStruct(
        day: deserializeParam(
          data['day'],
          ParamType.DateTime,
          false,
        ),
        tableList: deserializeStructParam<TableStruct>(
          data['tableList'],
          ParamType.DataStruct,
          true,
          structBuilder: TableStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CalendarStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CalendarStruct &&
        day == other.day &&
        listEquality.equals(tableList, other.tableList);
  }

  @override
  int get hashCode => const ListEquality().hash([day, tableList]);
}

CalendarStruct createCalendarStruct({
  DateTime? day,
}) =>
    CalendarStruct(
      day: day,
    );
