class ValidateUtil {
  static String? validateCPF(String? value) {
    if (value == null) return "CPF obrigatório";
    String cleanCPF = value.replaceAll(RegExp(r'\D'), ''); // Remove caracteres não numéricos
    if (cleanCPF.length != 11) {
      return "CPF deve ter 11 dígitos";
    }
    return null; // CPF válido (somente pela quantidade de dígitos)
  }
}