import Mathlib.Algebra.Algebra.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

--Size of a hexagonal cluster is c(x) + 6 * x
def hex_ring : ℕ → ℕ
 | 0 => 1
 | n + 1 => hex_ring n + (6 * n)

def one_sub_one : 1 - 1 = 0 :=
  rfl

--Show that c(x) + (6 * x) = 3 * n * (n - 1) + 1
--As of previously known formula
theorem total_hexagon_size (n : ℕ) : hex_ring n = 3 * n * (n - 1) + 1 := by
  induction n with
  | zero =>
  rfl
  | succ k h =>
  unfold hex_ring
  rw [h]
  cases k with
    | zero =>
    rfl
    | succ m =>
    rw [add_tsub_cancel_right]; rw [add_tsub_cancel_right]
    ring

--Subtract the next cluster size by the current one in order
--to get the corona layer
def corona_layer (n : ℕ) : ℕ :=
  hex_ring (n + 1) - hex_ring (n)

--Prove that the corona layer is equal to 6n
theorem corona_size (n : ℕ) (hn : 0 < n) : corona_layer n = 6 * n := by
  cases n with
  | zero =>
  contradiction
  | succ k =>
  unfold corona_layer
  rw [hex_ring]
  omega
