import 'package:exercicio_componentes_flutter/util/input_masks_util.dart';
import 'package:exercicio_componentes_flutter/util/intl/localization_util.dart';
import 'package:exercicio_componentes_flutter/util/validate_util.dart';
import 'package:exercicio_componentes_flutter/pages/exercicio_um/widgets/gender_radio_button.dart';
import 'package:exercicio_componentes_flutter/pages/exercicio_um/widgets/my_input_text.dart';
import 'package:exercicio_componentes_flutter/pages/exercicio_um/widgets/texto_container.dart';
import 'package:flutter/material.dart';

class ExercicioUm extends StatefulWidget {
  const ExercicioUm({super.key});

  @override
  State<ExercicioUm> createState() => _ExercicioUmState();
}

class _ExercicioUmState extends State<ExercicioUm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _employeeIdController = TextEditingController();
  final TextEditingController _designationController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  String? _selectedGender;
  bool _genderError = false;

  void _submitForm() {
    setState(() {
      _genderError = _selectedGender == null;
    });

    if (_formKey.currentState!.validate() && !_genderError) {
      print("Formulário válido e enviado com sucesso!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(LocalizationUtil.of(context).appName),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: TextoContainer(
              label: LocalizationUtil.of(context).employeeDetailLabel,
              child: Column(
                spacing: 16,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyInputText(
                    label: LocalizationUtil.of(context).firstNameLabel,
                    controller: _firstNameController,
                    validator: (value) => value == null || value.isEmpty
                        ? LocalizationUtil.of(context).mandatoryField
                        : null,
                  ),
                  MyInputText(
                    label: LocalizationUtil.of(context).lastNameLabel,
                    controller: _lastNameController,
                    validator: (value) => value == null || value.isEmpty
                        ? LocalizationUtil.of(context).mandatoryField
                        : null,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_genderError)
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                          child: Text(
                            LocalizationUtil.of(context).genderRequired,
                            style: TextStyle(color: Colors.red, fontSize: 12),
                          ),
                        ),
                      GenderRadioButton(
                        onChanged: (String? value) {
                          setState(() {
                            _selectedGender = value;
                            _genderError = false;
                          });
                        },
                      ),
                    ],
                  ),
                  MyInputText(
                    label: LocalizationUtil.of(context).employeeIdLabel,
                    controller: _employeeIdController,
                    validator: (value) => value == null || value.isEmpty
                        ? LocalizationUtil.of(context).mandatoryField
                        : null,
                  ),
                  MyInputText(
                    label: LocalizationUtil.of(context).desgnationLabel,
                    controller: _designationController,
                    validator: (value) => value == null || value.isEmpty
                        ? LocalizationUtil.of(context).mandatoryField
                        : null,
                  ),
                  MyInputText(
                    label: LocalizationUtil.of(context).phoneNumberLabel,
                    controller: _phoneNumberController,
                    inputFormatters: [InputMasksUtil.cpf],
                    validator: ValidateUtil.validateCPF,
                  ),
                  OutlinedButton(
                    onPressed: _submitForm,
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(width: 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(LocalizationUtil.of(context).submitButton),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
