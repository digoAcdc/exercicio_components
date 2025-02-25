import 'package:exercicio_componentes_flutter/constants/app_colors.dart';
import 'package:exercicio_componentes_flutter/util/intl/localization_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*
  🎨 Tela de Login - Get Your Money Under Control (Mockup)
  =======================================================

  📌 Cores e Estilo
  - Fundo: Preto (#000000).
  - Texto: Branco (#FFFFFF), com opacidade para informativos (##FFFFFFB3
).
  - Botões:
    - "Sign Up with Email ID": Fundo roxo (AppColors.primary), texto branco, fonte 16px, negrito.
    - "Sign Up with Google": Fundo branco, ícone do Google, texto preto, fonte 16px, negrito, borda cinza.

  🏗 Estrutura da Tela
  - Logo Flutter de 80x80px no topo, centralizado.
  - Título "Get your Money Under Control" em 26px, negrito e branco.
  - Subtítulo "Manage your expenses. Seamlessly." em 16px, branco opaco.
  - Botões de acesso com estilos distintos.
  - Link "Already have an account? Sign In" em 14px, branco, negrito e sublinhado.

  🎯 Melhorias Possíveis
  - Ajustar centralização do logo.
  - Melhorar espaçamento entre botões.
  - Adicionar feedback visual ao clicar nos botões.
*/

class MoneyAnderControlPage extends StatelessWidget {
  const MoneyAnderControlPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: 80,
              height: 80,
              child: FlutterLogo(),
            ),
            const SizedBox(height: 40),
            Text(
              LocalizationUtil.of(context).getYourMoney,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textPrimary,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              LocalizationUtil.of(context).manager,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.primary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(
                  LocalizationUtil.of(context).signUpWithEmail,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.white,
                  side: BorderSide(color: AppColors.buttonBorder),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FaIcon(FontAwesomeIcons.google,
                        size: 20, color: Colors.black),
                    const SizedBox(width: 12),
                    Text(
                      LocalizationUtil.of(context).signnUpWithGoogle,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            GestureDetector(
              onTap: () {},
              child: Text(
                LocalizationUtil.of(context).alreadyAccount,
                style: TextStyle(
                  color: AppColors.textPrimary,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
