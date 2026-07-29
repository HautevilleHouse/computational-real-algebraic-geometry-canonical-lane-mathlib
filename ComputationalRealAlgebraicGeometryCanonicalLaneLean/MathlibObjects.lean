import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Data.Polynomial.Basic
import Mathlib.Data.Real.Basic
import Mathlib.Tactic

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

def Decides (M : DecisionProcedure) (L : Language) : Prop :=
  ∀ x : BitString, M.accepts x = true ↔ x ∈ L

abbrev BitString := List Bool
abbrev Language := Set BitString

structure DecisionProcedure where
  accepts : BitString → Bool

structure PolynomialCertificate where
  poly : Polynomial ℚ
  degreeBound : Nat

def Semicolon := Nat

structure CragAdmittedObject where
  polynomialData : PolynomialCertificate
  projectedLanguage : Language
  solver : DecisionProcedure

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse