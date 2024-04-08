import '/components/small_container_widget/small_container_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'lesson_container_widget_model.dart';
export 'lesson_container_widget_model.dart';

class LessonContainerWidgetWidget extends StatefulWidget {
  const LessonContainerWidgetWidget({
    super.key,
    required this.startDate,
    required this.endDate,
    required this.lesson,
    required this.lessonType,
    required this.teacher,
    required this.lessonRoom,
  });

  final DateTime? startDate;
  final DateTime? endDate;
  final String? lesson;
  final String? lessonType;
  final String? teacher;
  final String? lessonRoom;

  @override
  State<LessonContainerWidgetWidget> createState() =>
      _LessonContainerWidgetWidgetState();
}

class _LessonContainerWidgetWidgetState
    extends State<LessonContainerWidgetWidget> {
  late LessonContainerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LessonContainerWidgetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(28.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                dateTimeFormat(
                  'jm',
                  widget.startDate,
                  locale: FFLocalizations.of(context).languageCode,
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF1D9DF2),
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFE8F4FF),
                borderRadius: BorderRadius.circular(14.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.lesson,
                            'null',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Open Sans',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            wrapWithModel(
                              model: _model.smallContainerWidgetModel1,
                              updateCallback: () => setState(() {}),
                              child: SmallContainerWidgetWidget(
                                text: widget.lessonType!,
                                type: 'lecture',
                              ),
                            ),
                            wrapWithModel(
                              model: _model.smallContainerWidgetModel2,
                              updateCallback: () => setState(() {}),
                              child: SmallContainerWidgetWidget(
                                text: widget.teacher!,
                                type: 'teacher',
                              ),
                            ),
                          ].divide(SizedBox(width: 12.0)),
                        ),
                        wrapWithModel(
                          model: _model.smallContainerWidgetModel3,
                          updateCallback: () => setState(() {}),
                          child: SmallContainerWidgetWidget(
                            text: widget.lessonRoom!,
                            type: 'room',
                          ),
                        ),
                      ].divide(SizedBox(height: 12.0)),
                    ),
                    FlutterFlowIconButton(
                      borderColor: Colors.transparent,
                      borderRadius: 20.0,
                      borderWidth: 1.0,
                      buttonSize: 40.0,
                      icon: Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFF1D9DF2),
                        size: 24.0,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1.0, 0.0),
              child: Text(
                dateTimeFormat(
                  'jm',
                  widget.endDate,
                  locale: FFLocalizations.of(context).languageCode,
                ),
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Open Sans',
                      color: Color(0xFF1D9DF2),
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                    ),
              ),
            ),
          ].divide(SizedBox(height: 12.0)),
        ),
      ),
    );
  }
}
