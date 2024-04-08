import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _userName = prefs.getString('ff_userName') ?? _userName;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<CalendarStruct> _calendar = [
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712516400000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712547000000\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712638200000\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Physics\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Lecture\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"101A\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Jack Daniels\\\\\\\"}\\\",\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712555110235\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712555110235\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Literature\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Practical\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"305B\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Samantha Atkinson\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712602800000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712555214818\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712555214818\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Programming\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Lecture\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"203B\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Bill Gates\\\\\\\"}\\\",\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712555309381\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712555309381\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Russian Literature\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Lecture\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"310A\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Alexander Pushkin\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712689200000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575848387\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575848387\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712775600000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575883365\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575883365\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712862000000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575893756\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575893756\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1712948400000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575904604\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575904604\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713034800000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575923002\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575923002\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713121200000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575934233\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575934233\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713207600000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575942972\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575942972\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713294000000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575955894\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575955894\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713380400000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575965280\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575965280\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713466800000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575974822\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575974822\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713466800000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575984367\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575984367\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}')),
    CalendarStruct.fromSerializableMap(jsonDecode(
        '{\"day\":\"1713553200000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712575994453\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712575994453\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"Hello World\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Hello World\\\\\\\"}\\\"]\"}'))
  ];
  List<CalendarStruct> get calendar => _calendar;
  set calendar(List<CalendarStruct> _value) {
    _calendar = _value;
  }

  void addToCalendar(CalendarStruct _value) {
    _calendar.add(_value);
  }

  void removeFromCalendar(CalendarStruct _value) {
    _calendar.remove(_value);
  }

  void removeAtIndexFromCalendar(int _index) {
    _calendar.removeAt(_index);
  }

  void updateCalendarAtIndex(
    int _index,
    CalendarStruct Function(CalendarStruct) updateFn,
  ) {
    _calendar[_index] = updateFn(_calendar[_index]);
  }

  void insertAtIndexInCalendar(int _index, CalendarStruct _value) {
    _calendar.insert(_index, _value);
  }

  CalendarStruct _calendarTemp = CalendarStruct();
  CalendarStruct get calendarTemp => _calendarTemp;
  set calendarTemp(CalendarStruct _value) {
    _calendarTemp = _value;
  }

  void updateCalendarTempStruct(Function(CalendarStruct) updateFn) {
    updateFn(_calendarTemp);
  }

  String _userName = '';
  String get userName => _userName;
  set userName(String _value) {
    _userName = _value;
    prefs.setString('ff_userName', _value);
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
