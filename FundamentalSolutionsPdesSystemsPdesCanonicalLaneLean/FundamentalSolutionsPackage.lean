import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure FundamentalSolutionData where
  domain : Type u
  operator : Type v
  kernel : Type w
  regularity : Prop
  singSupport : Prop
  pdeSatisfied : Prop

def FundamentalSolutionClosed (F : FundamentalSolutionData) : Prop :=
  F.regularity ∧ F.singSupport ∧ F.pdeSatisfied

structure FundamentalSolutionEvidence (F : FundamentalSolutionData) where
  regularityClosed : F.regularity
  singSupportClosed : F.singSupport
  pdeSatisfiedClosed : F.pdeSatisfied

theorem fundamental_solution_closed_from_evidence (F : FundamentalSolutionData)
    (E : FundamentalSolutionEvidence F) : FundamentalSolutionClosed F := by
  exact And.intro E.regularityClosed (And.intro E.singSupportClosed E.pdeSatisfiedClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse