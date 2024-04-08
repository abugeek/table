import '/backend/schema/structs/index.dart';
import '/components/lesson_add_widget/lesson_add_widget_widget.dart';
import '/components/no_data_widget/no_data_widget_widget.dart';
import '/components/small_container_widget/small_container_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'add_to_calendar_page_widget.dart' show AddToCalendarPageWidget;
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddToCalendarPageModel extends FlutterFlowModel<AddToCalendarPageWidget> {
  ///  Local state fields for this page.

  CalendarStruct? local;
  void updateLocalStruct(Function(CalendarStruct) updateFn) =>
      updateFn(local ??= CalendarStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
