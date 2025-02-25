import 'package:flutter/material.dart';

abstract class NavigationUtil {
  // Método para navegar para uma rota nomeada
  static void navigateTo(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.pushNamed(context, routeName, arguments: arguments);
  }

  // Método para substituir a tela atual
  static void replaceWith(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(context, routeName, arguments: arguments);
  }

  // Método para remover todas as telas e abrir uma nova
  static void navigateAndRemoveAll(BuildContext context, String routeName, {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(context, routeName, (route) => false, arguments: arguments);
  }

  // Método para voltar à tela anterior
  static void goBack(BuildContext context, {Object? result}) {
    if (Navigator.canPop(context)) {
      Navigator.pop(context, result);
    }
  }
}
