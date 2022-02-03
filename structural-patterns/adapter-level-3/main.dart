import 'adapters/square_peg_adapter.dart';
import 'round/round_hole.dart';
import 'round/round_peg.dart';
import 'square/quare_peg.dart';

main() {
  // Round fits round, no surprise.
  RoundHole hole = new RoundHole(5);
  RoundPeg rpeg = new RoundPeg.setRadius(5);
  if (hole.fits(rpeg)) {
    print("Round peg r5 fits round hole r5.");
  }

  SquarePeg smallSqPeg = new SquarePeg(2);
  SquarePeg largeSqPeg = new SquarePeg(20);
  // hole.fits(smallSqPeg); // Won't compile.

  // Adapter solves the problem.
  SquarePegAdapter smallSqPegAdapter = new SquarePegAdapter(smallSqPeg);
  SquarePegAdapter largeSqPegAdapter = new SquarePegAdapter(largeSqPeg);
  if (hole.fits(smallSqPegAdapter)) {
    print("Square peg w2 fits round hole r5.");
  }
  if (!hole.fits(largeSqPegAdapter)) {
    print("Square peg w20 does not fit into round hole r5.");
  }
}
