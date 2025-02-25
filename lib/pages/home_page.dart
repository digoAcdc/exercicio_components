import 'package:exercicio_componentes_flutter/constants/navigation_const.dart';
import 'package:exercicio_componentes_flutter/util/navigation_util/navigation_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          spacing: 16,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 60,
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    NavigationUtil.navigateTo(
                        context, NavigationConst.navigationExercicioUm);
                  },
                  child: Text("Exercicio 1")),
            ),
            SizedBox(
              height: 60,
              width: double.infinity,
              child: OutlinedButton(
                  onPressed: () {
                    NavigationUtil.navigateTo(
                        context, NavigationConst.navigationMockup);
                  },
                  child: Text("Mockup")),
            ),
          ],
        ),
      ),
    );
  }
}
