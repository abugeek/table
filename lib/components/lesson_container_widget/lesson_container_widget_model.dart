import '/components/small_container_widget/small_container_widget_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lesson_container_widget_widget.dart' show LessonContainerWidgetWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LessonContainerWidgetModel
    extends FlutterFlowModel<LessonContainerWidgetWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for small_container_widget component.
  late SmallContainerWidgetModel smallContainerWidgetModel1;
  // Model for small_container_widget component.
  late SmallContainerWidgetModel smallContainerWidgetModel2;
  // Model for small_container_widget component.
  late SmallContainerWidgetModel smallContainerWidgetModel3;

  @override
  void initState(BuildContext context) {
    smallContainerWidgetModel1 =
        createModel(context, () => SmallContainerWidgetModel());
    smallContainerWidgetModel2 =
        createModel(context, () => SmallContainerWidgetModel());
    smallContainerWidgetModel3 =
        createModel(context, () => SmallContainerWidgetModel());
  }

  @override
  void dispose() {
    smallContainerWidgetModel1.dispose();
    smallContainerWidgetModel2.dispose();
    smallContainerWidgetModel3.dispose();
  }
}
