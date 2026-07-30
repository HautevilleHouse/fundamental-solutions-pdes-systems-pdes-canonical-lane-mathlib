import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure GreenFunctionPackage where
  operator : Type
  domain : Type
  greenFunctionExists : Prop
  singularityControl : Prop
  boundaryCompatibility : Prop

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  greenFunctionExistsClosed : G.greenFunctionExists
  singularityControlClosed : G.singularityControl
  boundaryCompatibilityClosed : G.boundaryCompatibility

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.greenFunctionExists ∧ G.singularityControl ∧ G.boundaryCompatibility

theorem green_function_closed_from_evidence (G : GreenFunctionPackage) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.greenFunctionExistsClosed
    (And.intro E.singularityControlClosed E.boundaryCompatibilityClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse