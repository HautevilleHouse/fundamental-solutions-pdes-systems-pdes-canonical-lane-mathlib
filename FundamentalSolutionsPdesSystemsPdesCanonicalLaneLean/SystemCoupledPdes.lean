import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure SystemCoupledPdesPackage where
  numberOfEquations : Nat
  couplingMatrix : Type u
  ellipticityCondition : Prop
  fundamentalMatrix : Prop
  solvability : Prop

structure SystemCoupledPdesEvidence (S : SystemCoupledPdesPackage) where
  ellipticityConditionClosed : S.ellipticityCondition
  fundamentalMatrixClosed : S.fundamentalMatrix
  solvabilityClosed : S.solvability

def SystemCoupledPdesClosed (S : SystemCoupledPdesPackage) : Prop :=
  S.ellipticityCondition ∧ S.fundamentalMatrix ∧ S.solvability

theorem system_coupled_pdes_closed_from_evidence (S : SystemCoupledPdesPackage) (E : SystemCoupledPdesEvidence S) : SystemCoupledPdesClosed S := by
  exact And.intro E.ellipticityConditionClosed (And.intro E.fundamentalMatrixClosed E.solvabilityClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse