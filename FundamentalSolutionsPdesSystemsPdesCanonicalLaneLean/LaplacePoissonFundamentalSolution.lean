import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure LaplacePoissonFundamentalSolutionPackage where
  spaceDimension : Nat
  fundamentalSolution : Type u
  singularityBehavior : Prop
  asymptoticDecay : Prop
  meanValueProperty : Prop
  boundaryLayerPotentials : Prop

structure LaplacePoissonFundamentalSolutionEvidence (L : LaplacePoissonFundamentalSolutionPackage) where
  fundamentalSolutionDefined : L.fundamentalSolution
  singularityBehaviorClosed : L.singularityBehavior
  asymptoticDecayClosed : L.asymptoticDecay
  meanValuePropertyClosed : L.meanValueProperty
  boundaryLayerPotentialsClosed : L.boundaryLayerPotentials

def LaplacePoissonFundamentalSolutionClosed (L : LaplacePoissonFundamentalSolutionPackage) : Prop :=
  L.singularityBehavior ∧ L.asymptoticDecay ∧ L.meanValueProperty ∧ L.boundaryLayerPotentials

theorem laplace_poisson_fundamental_solution_closed_from_evidence
    (L : LaplacePoissonFundamentalSolutionPackage) (E : LaplacePoissonFundamentalSolutionEvidence L) :
    LaplacePoissonFundamentalSolutionClosed L := by
  exact And.intro E.singularityBehaviorClosed
    (And.intro E.asymptoticDecayClosed
      (And.intro E.meanValuePropertyClosed E.boundaryLayerPotentialsClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse