import 'package:exercicio_componentes_flutter/constants/app_colors.dart';
import 'package:exercicio_componentes_flutter/pages/mockup/widgets/custom_login_button.dart';
import 'package:exercicio_componentes_flutter/util/intl/localization_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

/*
  🎨 Tela de Login - Tinder (Mockup)
  ===================================

   Cores e Estilo
  - Fundo: Gradiente de vermelho para rosa (#EB576F e #ED6D63).
  - Texto: Branco com opacidade para textos informativos.
  - Botões:
    - Contorno branco, sem preenchimento.
    - Texto em branco.
    - Ícones alinhados à esquerda.
    - Fonte negrito e em caixa alta.

    Estrutura da Tela
  - AppBar transparente com gradiente de fundo e botão de voltar.
  - Logo centralizado (SVG) de 45x45px, cor branca.
  - Termos e Condições com texto explicativo (12px, branco opaco).
  - Três botões de login (Apple, Facebook, Phone Number) com ícones alinhados.
  - Link "Trouble Signing In?" pequeno, branco e sem negrito.

*/


class TinderPage extends StatelessWidget {
  const TinderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(56),
        child: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [AppColors.bgTinder, AppColors.bgTinderLight],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
          child: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0, // Remove sombra
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white),
              onPressed: () => Navigator.of(context).pop(),
            ),
          ),
        ),
      ),
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [AppColors.bgTinder, AppColors.bgTinderLight],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Expanded(
              child: Center(
                child: SvgPicture.asset(
                  'assets/icons/tinder.svg',
                  width: 45,
                  height: 45,
                  colorFilter: const ColorFilter.mode(
                    Colors.white,
                    BlendMode.srcIn,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32),
                    child: Text(
                      LocalizationUtil.of(context).byTapping,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  CustomLoginButton(
                    text: LocalizationUtil.of(context).signApple.toUpperCase(),
                    icon: FontAwesomeIcons.apple,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  CustomLoginButton(
                    text: LocalizationUtil.of(context).signFace.toUpperCase(),
                    icon: FontAwesomeIcons.facebook,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 16),
                  CustomLoginButton(
                    text: LocalizationUtil.of(context).signPhone.toUpperCase(),
                    icon: FontAwesomeIcons.solidCommentDots,
                    onPressed: () {},
                  ),
                  const SizedBox(height: 24),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      LocalizationUtil.of(context).trouble,
                      style: TextStyle(color: AppColors.secondary),
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
