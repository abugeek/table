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
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'events_model.dart';
export 'events_model.dart';

class EventsWidget extends StatefulWidget {
  const EventsWidget({super.key});

  @override
  State<EventsWidget> createState() => _EventsWidgetState();
}

class _EventsWidgetState extends State<EventsWidget> {
  late EventsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EventsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.choosenDate = functions.getStartDate(getCurrentTimestamp);
      });
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(16.0, 16.0, 16.0, 0.0),
                child: wrapWithModel(
                  model: _model.mainInfoModel,
                  updateCallback: () => setState(() {}),
                  child: MainInfoWidget(),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                child: FlutterFlowCalendar(
                  color: FlutterFlowTheme.of(context).primary,
                  iconColor: FlutterFlowTheme.of(context).secondaryText,
                  weekFormat: true,
                  weekStartsMonday: true,
                  rowHeight: 74.0,
                  onChange: (DateTimeRange? newSelectedDate) async {
                    if (_model.calendarSelectedDay == newSelectedDate) {
                      return;
                    }
                    _model.calendarSelectedDay = newSelectedDate;
                    setState(() {
                      _model.choosenDate = _model.calendarSelectedDay?.start;
                    });
                    setState(() {});
                  },
                  titleStyle:
                      FlutterFlowTheme.of(context).headlineSmall.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                  dayOfWeekStyle:
                      FlutterFlowTheme.of(context).labelLarge.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                  dateStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        letterSpacing: 0.0,
                      ),
                  selectedDateStyle:
                      FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                  inactiveDateStyle:
                      FlutterFlowTheme.of(context).labelMedium.override(
                            fontFamily: 'Open Sans',
                            letterSpacing: 0.0,
                          ),
                  locale: FFLocalizations.of(context).languageCode,
                ),
              ),
              if (false)
                Align(
                  alignment: AlignmentDirectional(1.0, 0.0),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 24.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(1.0, 0.0),
                          child: FlutterFlowIconButton(
                            borderColor: FlutterFlowTheme.of(context).primary,
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              Icons.add,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('AddToCalendarPage');
                            },
                          ),
                        ),
                        Text(
                          FFLocalizations.of(context).getText(
                            'cvd3u5zr' /* Edit */,
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleLarge.override(
                                    fontFamily: 'Open Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ].divide(SizedBox(width: 24.0)),
                    ),
                  ),
                ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(24.0, 24.0, 24.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final table = FFAppState()
                        .calendar
                        .where((e) => e.day == _model.choosenDate)
                        .toList();
                    if (table.isEmpty) {
                      return NoDataWidgetWidget();
                    }
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: table.length,
                      itemBuilder: (context, tableIndex) {
                        final tableItem = table[tableIndex];
                        return Builder(
                          builder: (context) {
                            final lessons = tableItem.tableList.toList();
                            return Column(
                              mainAxisSize: MainAxisSize.min,
                              children:
                                  List.generate(lessons.length, (lessonsIndex) {
                                final lessonsItem = lessons[lessonsIndex];
                                return LessonContainerWidgetWidget(
                                  key: Key(
                                      'Keymr3_${lessonsIndex}_of_${lessons.length}'),
                                  lesson: lessonsItem.lessonName,
                                  lessonType: lessonsItem.lessonType,
                                  teacher: lessonsItem.teacher,
                                  startDate: lessonsItem.startTime!,
                                  endDate: lessonsItem.endTime!,
                                  lessonRoom: lessonsItem.lessonRoom,
                                );
                              }).divide(SizedBox(height: 16.0)),
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ),
            ]
                .addToStart(SizedBox(height: 8.0))
                .addToEnd(SizedBox(height: 50.0)),
          ),
        ),
      ),
    );
  }
}
