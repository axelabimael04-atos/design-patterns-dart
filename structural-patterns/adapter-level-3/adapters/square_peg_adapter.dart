import 'dart:math';

import '../round/round_peg.dart';
import '../square/quare_peg.dart';

class SquarePegAdapter extends RoundPeg {
    final SquarePeg peg;

  SquarePegAdapter(this.peg);

    @override
    double getRadius() {
        double result;
        // Calculate a minimum circle radius, which can fit this peg.
        result = (sqrt(pow((peg.getWidth() / 2), 2) * 2));
        return result;
    }
}