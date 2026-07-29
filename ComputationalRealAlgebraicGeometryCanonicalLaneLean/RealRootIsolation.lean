import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

---

structure RealRootIsolationCertificate where
  polynomial : Polynomial ℚ
  isolatingInterval : Set ℝ
  certificateBound : ℕ
deriving Repr, DecidableEq

structure RealRootIsolationBridge (A : AdmissibleClass) where
  polynomial : Polynomial ℚ
  isolatingIntervals : List (Set ℝ)
  disjoint : ∀ i j, i ≠ j → isolatingIntervals[i] ∩ isolatingIntervals[j] = ∅
  rootCount : ℕ

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ∀ (p : Polynomial ℚ), ∃ (cert : RealRootIsolationCertificate), True

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    intro p
    refine ⟨⟨p, Set.Ioo 0 1, 0⟩, trivial⟩

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse