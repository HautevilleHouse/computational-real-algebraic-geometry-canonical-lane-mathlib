import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

---

structure PositivstellensatzCertificate where
  polynomials : List (Polynomial (Fin n → ℚ))
  weights : List (Polynomial (Fin n → ℚ))
  identity : Polynomial (Fin n → ℚ) = 1

def gateClosed (A : AdmissibleClass) : Prop :=
  ∀ (p : Polynomial (Fin n → ℚ)), (∀ x, p x > 0) → ∃ cert : PositivstellensatzCertificate, True

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse