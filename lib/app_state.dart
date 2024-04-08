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
        '{\"day\":\"1712602800000\",\"tableList\":\"[\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712555214818\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712555214818\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Programming\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Lecture\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"203B\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Bill Gates\\\\\\\"}\\\",\\\"{\\\\\\\"startTime\\\\\\\":\\\\\\\"1712555309381\\\\\\\",\\\\\\\"endTime\\\\\\\":\\\\\\\"1712555309381\\\\\\\",\\\\\\\"lessonName\\\\\\\":\\\\\\\"Russian Literature\\\\\\\",\\\\\\\"lessonType\\\\\\\":\\\\\\\"Lecture\\\\\\\",\\\\\\\"lessonRoom\\\\\\\":\\\\\\\"310A\\\\\\\",\\\\\\\"teacher\\\\\\\":\\\\\\\"Alexander Pushkin\\\\\\\"}\\\"]\"}'))
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
