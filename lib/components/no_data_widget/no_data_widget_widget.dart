import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'no_data_widget_model.dart';
export 'no_data_widget_model.dart';

class NoDataWidgetWidget extends StatefulWidget {
  const NoDataWidgetWidget({super.key});

  @override
  State<NoDataWidgetWidget> createState() => _NoDataWidgetWidgetState();
}

class _NoDataWidgetWidgetState extends State<NoDataWidgetWidget> {
  late NoDataWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoDataWidgetModel());

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
      height: 36.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Text(
        FFLocalizations.of(context).getText(
          'rr2asw9n' /* No Data */,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              fontFamily: 'Open Sans',
              letterSpacing: 0.0,
            ),
      ),
    );
  }
}
