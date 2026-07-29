import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

structure AdmissibleClass where
  lane : CragAdmittedObject
  solverDecidesProjectedLanguage : Decides lane.solver lane.projectedLanguage
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  Decides A.lane.solver A.lane.projectedLanguage ∧
  (A.endpointSatisfied ∨ A.remainderRecorded)

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse