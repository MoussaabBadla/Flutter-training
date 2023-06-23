import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ConnectionButton extends StatelessWidget {
  const ConnectionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Déjà membre?',
            style: TextStyle(
                color: Colors.white.withOpacity(0.8),
                fontSize: 16,
                fontWeight: FontWeight.w600)),
        TextButton(
            style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(
                  const EdgeInsets.all(2)),
            ),
            onPressed: () {},
            child: Text(
              'Se connecter',
              style: TextStyle(
                  color: Colors.white.withOpacity(0.8),
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                  decorationColor: Colors.white.withOpacity(0.8),
                  fontWeight: FontWeight.w600),
            ))
      ],
    );
  }
}

