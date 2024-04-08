import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lesson_add_widget_widget.dart' show LessonAddWidgetWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LessonAddWidgetModel extends FlutterFlowModel<LessonAddWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for lesson widget.
  FocusNode? lessonFocusNode;
  TextEditingController? lessonController;
  String? Function(BuildContext, String?)? lessonControllerValidator;
  // State field(s) for lessonType widget.
  FocusNode? lessonTypeFocusNode;
  TextEditingController? lessonTypeController;
  String? Function(BuildContext, String?)? lessonTypeControllerValidator;
  // State field(s) for lessonRoom widget.
  FocusNode? lessonRoomFocusNode;
  TextEditingController? lessonRoomController;
  String? Function(BuildContext, String?)? lessonRoomControllerValidator;
  // State field(s) for lessonTeacher widget.
  FocusNode? lessonTeacherFocusNode;
  TextEditingController? lessonTeacherController;
  String? Function(BuildContext, String?)? lessonTeacherControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    lessonFocusNode?.dispose();
    lessonController?.dispose();

    lessonTypeFocusNode?.dispose();
    lessonTypeController?.dispose();

    lessonRoomFocusNode?.dispose();
    lessonRoomController?.dispose();

    lessonTeacherFocusNode?.dispose();
    lessonTeacherController?.dispose();
  }
}
