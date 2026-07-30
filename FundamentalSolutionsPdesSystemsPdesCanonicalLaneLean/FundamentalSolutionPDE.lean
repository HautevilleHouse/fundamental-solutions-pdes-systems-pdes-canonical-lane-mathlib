import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure FundamentalSolutionPDE where
  domain : Type u
  linearOperator : Type v
  sourceTerm : Type w
  solution : domain → ℝ
  fundamentalCondition : (linearOperator → solution) = sourceTerm
  smoothness : Prop
  decayCondition : Prop

structure FundamentalSolutionPDEEvidence (P : FundamentalSolutionPDE) where
  fundamentalConditionClosed : P.fundamentalCondition
  smoothnessClosed : P.smoothness
  decayConditionClosed : P.decayCondition

def FundamentalSolutionPDEClosed (P : FundamentalSolutionPDE) : Prop :=
  P.fundamentalCondition ∧ P.smoothness ∧ P.decayCondition

theorem fundamental_solution_pde_closed_from_evidence (P : FundamentalSolutionPDE)
    (E : FundamentalSolutionPDEEvidence P) : FundamentalSolutionPDEClosed P := by
  exact And.intro E.fundamentalConditionClosed
    (And.intro E.smoothnessClosed E.decayConditionClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse