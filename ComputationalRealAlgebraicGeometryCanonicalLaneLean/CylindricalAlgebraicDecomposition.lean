import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

---

structure CADCell where
  samplePoint : ℝ^n
  region : Set (ℝ^n)
deriving Repr, DecidableEq

structure CADCertificate (n : ℕ) where
  polynomials : List (Polynomial (Fin n → ℚ))
  cells : List (CADCell n)
  signInvariant : ∀ (cell : CADCell n) (p : Polynomial (Fin n → ℚ)), p ∈ polynomials → SignInvariant p cell.region

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse