import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure InitialBoundaryLayerPackage where
  initialCondition : Prop
  boundaryCondition : Prop
  compatibility : Prop
  wellPosedness : Prop
  solutionClass : Type u

structure InitialBoundaryLayerEvidence (I : InitialBoundaryLayerPackage) where
  initialConditionClosed : I.initialCondition
  boundaryConditionClosed : I.boundaryCondition
  compatibilityClosed : I.compatibility
  wellPosednessClosed : I.wellPosedness

def InitialBoundaryLayerClosed (I : InitialBoundaryLayerPackage) : Prop :=
  I.initialCondition ∧ I.boundaryCondition ∧ I.compatibility ∧ I.wellPosedness

theorem initial_boundary_layer_closed_from_evidence (I : InitialBoundaryLayerPackage) (E : InitialBoundaryLayerEvidence I) : InitialBoundaryLayerClosed I := by
  exact And.intro E.initialConditionClosed (And.intro E.boundaryConditionClosed (And.intro E.compatibilityClosed E.wellPosednessClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse