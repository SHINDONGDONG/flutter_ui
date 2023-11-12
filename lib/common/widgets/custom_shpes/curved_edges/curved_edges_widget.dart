import 'package:flutter/cupertino.dart';
import 'package:flutter_ui_app/common/widgets/custom_shpes/curved_edges/cuverd_edges.dart';

class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCustomCurvedEdges(), child: child);
  }
}
