import 'package:flutter/material.dart';
class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(8, 16, 0, 0),
      child: Text(
        'Marcus and Mike are forced to confront new threats career changes, '
            'and midlife crises as they join the newly created elite team AMMO of the'
            ' Miami police department to take down the ruthless Armando Armas,'
            ' the vicious leader of a Miami drug cartel. ', style: TextStyle(color: Colors.white),
        softWrap: true,
      ),
    );
  }
}
