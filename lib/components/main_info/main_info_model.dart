import '/components/profile_picture/profile_picture_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_info_widget.dart' show MainInfoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MainInfoModel extends FlutterFlowModel<MainInfoWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ProfilePicture component.
  late ProfilePictureModel profilePictureModel;

  @override
  void initState(BuildContext context) {
    profilePictureModel = createModel(context, () => ProfilePictureModel());
  }

  @override
  void dispose() {
    profilePictureModel.dispose();
  }
}
