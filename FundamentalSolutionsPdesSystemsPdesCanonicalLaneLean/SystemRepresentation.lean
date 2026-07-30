import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdes

structure SystemRepresentation (U : Type u) (V : Type v) where
  operators : List (FundamentalSolutionOperator U V)
  coupling : Prop
  compatibility : Prop
  wellPosedness : Prop
  couplingClosed : coupling
  compatibilityClosed : compatibility
  wellPosednessClosed : wellPosedness

structure SystemRepresentationEvidence (S : SystemRepresentation U V) where
  couplingClosed : S.coupling
  compatibilityClosed : S.compatibility
  wellPosednessClosed : S.wellPosedness

def SystemRepresentationClosed (S : SystemRepresentation U V) : Prop :=
  S.coupling ∧ S.compatibility ∧ S.wellPosedness

theorem system_representation_closed_from_evidence (S : SystemRepresentation U V) (E : SystemRepresentationEvidence S) :
  SystemRepresentationClosed S := by
  exact And.intro E.couplingClosed (And.intro E.compatibilityClosed E.wellPosednessClosed)

end FundamentalSolutionsPdesSystemsPdes
end HautevilleHouse