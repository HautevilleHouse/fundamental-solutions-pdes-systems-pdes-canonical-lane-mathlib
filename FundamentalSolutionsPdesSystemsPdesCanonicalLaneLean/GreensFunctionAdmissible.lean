import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdes

structure GreensFunctionAdmissible (X : Type u) (Y : Type v) where
  operator : FundamentalSolutionOperator X Y
  greensKernel : X → Y → ℂ
  boundaryCondition : Prop
  symmetryProperty : Prop
  greensKernelWellDefined : greensKernelWellDefined
  boundaryConditionClosed : boundaryCondition
  symmetryPropertyClosed : symmetryProperty

structure GreensFunctionAdmissibleEvidence (G : GreensFunctionAdmissible X Y) where
  greensKernelWellDefinedClosed : G.greensKernelWellDefined
  boundaryConditionClosed : G.boundaryCondition
  symmetryPropertyClosed : G.symmetryProperty

def GreensFunctionAdmissibleClosed (G : GreensFunctionAdmissible X Y) : Prop :=
  G.greensKernelWellDefined ∧ G.boundaryCondition ∧ G.symmetryProperty

theorem greens_function_admissible_closed_from_evidence (G : GreensFunctionAdmissible X Y) (E : GreensFunctionAdmissibleEvidence G) :
  GreensFunctionAdmissibleClosed G := by
  exact And.intro E.greensKernelWellDefinedClosed (And.intro E.boundaryConditionClosed E.symmetryPropertyClosed)

end FundamentalSolutionsPdesSystemsPdes
end HautevilleHouse