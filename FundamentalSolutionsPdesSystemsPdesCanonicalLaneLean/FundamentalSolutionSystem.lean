import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure FundamentalSolutionSystemPackage where
  systemDimension : Nat
  domainRegularity : Prop
  fundamentalSolutionMatrix : Type u
  jumpCondition : Prop
  superpositionPrinciple : Prop
  uniquenessTheorem : Prop

structure FundamentalSolutionSystemEvidence (F : FundamentalSolutionSystemPackage) where
  domainRegularityClosed : F.domainRegularity
  fundamentalSolutionMatrixDefined : F.fundamentalSolutionMatrix
  jumpConditionClosed : F.jumpCondition
  superpositionPrincipleClosed : F.superpositionPrinciple
  uniquenessTheoremClosed : F.uniquenessTheorem

def FundamentalSolutionSystemClosed (F : FundamentalSolutionSystemPackage) : Prop :=
  F.domainRegularity ∧ F.jumpCondition ∧ F.superpositionPrinciple ∧ F.uniquenessTheorem

theorem fundamental_solution_system_closed_from_evidence
    (F : FundamentalSolutionSystemPackage) (E : FundamentalSolutionSystemEvidence F) :
    FundamentalSolutionSystemClosed F := by
  exact And.intro E.domainRegularityClosed
    (And.intro E.jumpConditionClosed
      (And.intro E.superpositionPrincipleClosed E.uniquenessTheoremClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse