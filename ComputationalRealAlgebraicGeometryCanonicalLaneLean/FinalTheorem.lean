import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ComputationalRealAlgebraicGeometryCanonicalLaneLean.RealRootIsolation
import HautevilleHouse.ComputationalRealAlgebraicGeometryCanonicalLaneLean.CylindricalAlgebraicDecomposition
import HautevilleHouse.ComputationalRealAlgebraicGeometryCanonicalLaneLean.SemiAlgebraicSet
import HautevilleHouse.ComputationalRealAlgebraicGeometryCanonicalLaneLean.RealAlgebraicNumber
import HautevilleHouse.ComputationalRealAlgebraicGeometryCanonicalLaneLean.StenglePositivstellensatz

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

def ConstrainedComputationalRealAlgebraicGeometryClosure (A : AdmissibleClass) : Prop :=
  RealRootIsolation.bridgeClosed A ∧ CylindricalAlgebraicDecomposition.gateClosed A ∧ SemiAlgebraicSet.bridgeClosed A ∧ RealAlgebraicNumber.bridgeClosed A ∧ StenglePositivstellensatz.gateClosed A

theorem constrained_computational_real_algebraic_geometry_endgame (A : AdmissibleClass) : ConstrainedComputationalRealAlgebraicGeometryClosure A :=
  by
    refine ⟨?_, ?_, ?_, ?_, ?_⟩
    · exact bridge_from_admissible_class A
    · exact gate_from_admissible_class A
    · exact bridge_from_admissible_class A
    · exact bridge_from_admissible_class A
    · exact gate_from_admissible_class A

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse