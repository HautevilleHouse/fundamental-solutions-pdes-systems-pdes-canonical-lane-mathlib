import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure GreenFunctionPackage where
  domainRegion : Type u
  zeroOrderTerm : Prop
  operatorSymbol : String
  fundamentalSolutionExists : Prop
  greensFunction : Type v
  boundaryBehavior : Prop
  singularityOrder : Nat

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  fundamentalSolutionExistsClosed : G.fundamentalSolutionExists
  boundaryBehaviorClosed : G.boundaryBehavior
  singularityOrderClosed : G.singularityOrder = G.singularityOrder

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.fundamentalSolutionExists ∧ G.boundaryBehavior

theorem green_function_closed_from_evidence (G : GreenFunctionPackage) (E : GreenFunctionEvidence G) : GreenFunctionClosed G := by
  exact And.intro E.fundamentalSolutionExistsClosed E.boundaryBehaviorClosed

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse