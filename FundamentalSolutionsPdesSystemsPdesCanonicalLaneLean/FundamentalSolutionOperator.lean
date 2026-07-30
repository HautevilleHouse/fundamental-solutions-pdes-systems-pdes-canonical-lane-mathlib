import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdes

structure FundamentalSolutionOperator (X : Type u) (Y : Type v) where
  kernel : X → Y → ℂ
  domain : Set X
  codomain : Set Y
  pdeRelation : Prop
  regularityCondition : Prop
  kernelWellDefined : kernelWellDefined
  kernelSatisfiesPDE : kernelSatisfiesPDE

structure FundamentalSolutionOperatorEvidence (F : FundamentalSolutionOperator X Y) where
  domainNonempty : F.domain.Nonempty
  codomainNonempty : F.codomain.Nonempty
  kernelWellDefinedClosed : F.kernelWellDefined
  kernelSatisfiesPDEClosed : F.kernelSatisfiesPDE

def FundamentalSolutionOperatorClosed (F : FundamentalSolutionOperator X Y) : Prop :=
  F.kernelWellDefined ∧ F.kernelSatisfiesPDE

theorem fundamental_solution_operator_closed_from_evidence (F : FundamentalSolutionOperator X Y) (E : FundamentalSolutionOperatorEvidence F) :
  FundamentalSolutionOperatorClosed F := by
  exact And.intro E.kernelWellDefinedClosed E.kernelSatisfiesPDEClosed

end FundamentalSolutionsPdesSystemsPdes
end HautevilleHouse