import 'package:flutter/material.dart';

class GenderRadioButton extends StatefulWidget {
  final String? initialValue;
  final ValueChanged<String?> onChanged;

  const GenderRadioButton({
    super.key,
    this.initialValue,
    required this.onChanged,
  });

  @override
  _GenderRadioButtonState createState() => _GenderRadioButtonState();
}

class _GenderRadioButtonState extends State<GenderRadioButton> {
  String? _selectedGender;

  @override
  void initState() {
    super.initState();
    _selectedGender = widget.initialValue;
  }

  void _onGenderChanged(String? value) {
    setState(() {
      _selectedGender = value;
    });
    widget.onChanged(value); // Retorna o valor para o widget pai
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<String>(
          value: "Male",
          groupValue: _selectedGender,
          onChanged: _onGenderChanged,
        ),
        const Text("Male"),
        const SizedBox(width: 20),
        Radio<String>(
          value: "Female",
          groupValue: _selectedGender,
          onChanged: _onGenderChanged,
        ),
        const Text("Female"),
      ],
    );
  }
}
