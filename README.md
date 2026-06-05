# Hexagonal-tiling
Final Project for USCD 157 which involves the number of hexagons needed to surround a hexagonal cluster

The main things I wanted to prove was that a Hexagonal cluster has a total of H(n + 1) = H(n) + 6n where H(0) = 1 hexagons, and to prove this I showed that this was equal to the centered hexagonal numbers given by H(n) = 3n^2 - 3n + 1.

Then to show that a Hexagonal corona has 6n hexagons we show H(n + 1) - H(n) = 6n

(A003215) Hex (or centered hexagonal) numbers:
https://oeis.org/A003215


The formalization language used to prove this is Lean, more specifically Lean 4

To install Lean 4, click the link and follow the instructions
https://lean-lang.org/install/
