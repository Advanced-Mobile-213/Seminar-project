import 'package:flutter/material.dart';

class CheckBoxWidget extends StatefulWidget {
  const CheckBoxWidget({
    super.key,
    this.icon,
    required this.label,
    required this.isChecked,
    required this.onCheck,
  });

  final IconData? icon;
  final String label;
  final bool isChecked;
  final ValueChanged<bool> onCheck;

  @override
  State<CheckBoxWidget> createState() => _CheckBoxWidgetState();
}

class _CheckBoxWidgetState extends State<CheckBoxWidget> {
  late IconData _icon;

  @override
  void initState() {
    super.initState();
    _icon = widget.icon ?? Icons.fiber_manual_record_rounded;
  }

  void onChanged(bool? value) {
    if (value != null) {
      widget.onCheck(value);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.85,
      child: CheckboxListTile(
        secondary: Icon(_icon),
        title: Text(widget.label),
        value: widget.isChecked,
        onChanged: onChanged,
      ),
    );
  }
}
