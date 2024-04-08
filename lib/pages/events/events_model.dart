import '/backend/schema/structs/index.dart';
import '/components/lesson_container_widget/lesson_container_widget_widget.dart';
import '/components/main_info/main_info_widget.dart';
import '/components/no_data_widget/no_data_widget_widget.dart';
import '/flutter_flow/flutter_flow_calendar.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'events_widget.dart' show EventsWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EventsModel extends FlutterFlowModel<EventsWidget> {
  ///  Local state fields for this page.

  DateTime? choosenDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for MainInfo component.
  late MainInfoModel mainInfoModel;
  // State field(s) for Calendar widget.
  DateTimeRange? calendarSelectedDay;

  @override
  void initState(BuildContext context) {
    mainInfoModel = createModel(context, () => MainInfoModel());
    calendarSelectedDay = DateTimeRange(
      start: DateTime.now().startOfDay,
      end: DateTime.now().endOfDay,
    );
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    mainInfoModel.dispose();
  }
}
