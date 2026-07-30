import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure ParametricSingularIntegralPackage where
  kernelSymbol : Type u
  integrability : Prop
  principalValue : Prop
  boundedness : Prop
  compositionRule : Prop

structure ParametricSingularIntegralEvidence (P : ParametricSingularIntegralPackage) where
  integrabilityClosed : P.integrability
  principalValueClosed : P.principalValue
  boundednessClosed : P.boundedness
  compositionRuleClosed : P.compositionRule

def ParametricSingularIntegralClosed (P : ParametricSingularIntegralPackage) : Prop :=
  P.integrability ∧ P.principalValue ∧ P.boundedness ∧ P.compositionRule

theorem parametric_singular_integral_closed_from_evidence (P : ParametricSingularIntegralPackage) (E : ParametricSingularIntegralEvidence P) : ParametricSingularIntegralClosed P := by
  exact And.intro E.integrabilityClosed (And.intro E.principalValueClosed (And.intro E.boundednessClosed E.compositionRuleClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse