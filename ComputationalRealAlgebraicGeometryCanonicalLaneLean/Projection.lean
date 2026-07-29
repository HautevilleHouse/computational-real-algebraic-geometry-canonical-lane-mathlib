import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ComputationalRealAlgebraicGeometryCanonicalLaneLean

def cragProjection : Projection CragEndgameState := {
  toFun := λ x => x
  idempotent := by intro x; rfl
}

theorem crag_projection_idempotent (x : CragEndgameState) :
    cragProjection.toFun (cragProjection.toFun x) = cragProjection.toFun x := by
  exact cragProjection.idempotent x

end ComputationalRealAlgebraicGeometryCanonicalLaneLean
end HautevilleHouse