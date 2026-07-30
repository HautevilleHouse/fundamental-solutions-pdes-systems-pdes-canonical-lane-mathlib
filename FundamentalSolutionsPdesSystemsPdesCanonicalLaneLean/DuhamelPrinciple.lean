import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdes

structure DuhamelPrinciple (X : Type u) (Y : Type v) where
  system : SystemRepresentation X Y
  forcingTerm : Prop
  integralRepresentation : Prop
  causality : Prop
  forcingTermClosed : forcingTerm
  integralRepresentationClosed : integralRepresentation
  causalityClosed : causality

structure DuhamelPrincipleEvidence (D : DuhamelPrinciple X Y) where
  forcingTermClosed : D.forcingTerm
  integralRepresentationClosed : D.integralRepresentation
  causalityClosed : D.causality

def DuhamelPrincipleClosed (D : DuhamelPrinciple X Y) : Prop :=
  D.forcingTerm ∧ D.integralRepresentation ∧ D.causality

theorem duhamel_principle_closed_from_evidence (D : DuhamelPrinciple X Y) (E : DuhamelPrincipleEvidence D) :
  DuhamelPrincipleClosed D := by
  exact And.intro E.forcingTermClosed (And.intro E.integralRepresentationClosed E.causalityClosed)

end FundamentalSolutionsPdesSystemsPdes
end HautevilleHouse