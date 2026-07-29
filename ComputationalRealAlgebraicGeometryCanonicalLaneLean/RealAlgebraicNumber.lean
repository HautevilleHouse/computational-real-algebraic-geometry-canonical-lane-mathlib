import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

---

structure RealAlgebraicNumber where
  polynomial : Polynomial ℚ
  isolatingInterval : Set ℝ
  index : ℕ
deriving Repr, DecidableEq

structure RealAlgebraicNumberBridge (A : AdmissibleClass) where
  numbers : List RealAlgebraicNumber
  closedUnderOps : (a b : RealAlgebraicNumber) → RealAlgebraicNumber

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (a : RealAlgebraicNumber), a.index ≤ 1

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    intro a
    exact Nat.le_of_lt (Nat.lt_of_lt_of_le (by decide) (by decide))

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse