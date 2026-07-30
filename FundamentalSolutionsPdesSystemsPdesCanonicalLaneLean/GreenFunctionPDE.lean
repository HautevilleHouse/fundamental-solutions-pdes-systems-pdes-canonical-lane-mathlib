import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure GreenFunctionPackage where
  domain : Type u
  boundaryConditions : Prop
  ellipticOperator : Prop
  greensFunction : Type v
  continuityProperty : Prop
  integrabilityProperty : Prop

structure GreenFunctionEvidence (G : GreenFunctionPackage) where
  boundaryConditionsClosed : G.boundaryConditions
  ellipticOperatorClosed : G.ellipticOperator
  greensFunctionDefined : G.greensFunction
  continuityPropertyClosed : G.continuityProperty
  integrabilityPropertyClosed : G.integrabilityProperty

def GreenFunctionClosed (G : GreenFunctionPackage) : Prop :=
  G.boundaryConditions ∧ G.ellipticOperator ∧ G.continuityProperty ∧ G.integrabilityProperty

theorem green_function_closed_from_evidence (G : GreenFunctionPackage) (E : GreenFunctionEvidence G) :
    GreenFunctionClosed G := by
  exact And.intro E.boundaryConditionsClosed
    (And.intro E.ellipticOperatorClosed
      (And.intro E.continuityPropertyClosed E.integrabilityPropertyClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse