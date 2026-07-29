import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

---

structure SemiAlgebraicSet (n : ℕ) where
  polynomials : List (Polynomial (Fin n → ℚ))
  signConditions : List (SignCondition)

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (n : ℕ) (s : SemiAlgebraicSet n), Decidable (Nonempty (s : Set (ℝ^n)))

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    intro n s
    apply Classical.decEq

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse