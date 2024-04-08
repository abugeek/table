import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'small_container_widget_model.dart';
export 'small_container_widget_model.dart';

class SmallContainerWidgetWidget extends StatefulWidget {
  const SmallContainerWidgetWidget({
    super.key,
    required this.text,
    required this.type,
  });

  final String? text;
  final String? type;

  @override
  State<SmallContainerWidgetWidget> createState() =>
      _SmallContainerWidgetWidgetState();
}

class _SmallContainerWidgetWidgetState
    extends State<SmallContainerWidgetWidget> {
  late SmallContainerWidgetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SmallContainerWidgetModel());

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
        color: widget.type == 'lecture'
            ? Color(0xFF1D9DF2)
            : FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(8.0),
      ),
      alignment: AlignmentDirectional(0.0, 0.0),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 8.0, 12.0, 8.0),
        child: Text(
          valueOrDefault<String>(
            widget.text,
            'null',
          ),
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Open Sans',
                color: widget.type == 'lecture'
                    ? FlutterFlowTheme.of(context).secondaryBackground
                    : FlutterFlowTheme.of(context).primaryText,
                fontSize: 12.0,
                letterSpacing: 0.0,
              ),
        ),
      ),
    );
  }
}
