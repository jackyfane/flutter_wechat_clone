import 'package:flutter/material.dart';

class AlphabetAnchor extends StatelessWidget {
  final String alphabet =
      '↑,☆,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,S,Y,Z,#';

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: alphabet
            .split(',')
            .map((alpha) => _alphabetInkWell(
                    child: Text(
                  alpha,
                  style: TextStyle(fontSize: 12),
                )))
            .toList(),
      ),
    );
  }

  Widget _alphabetInkWell({Widget child, void onTap()}) {
    return InkWell(
      onTap: () => print(child),
      child: Container(
        margin: EdgeInsets.only(top: 2),
        child: child,
      ),
    );
  }
}
