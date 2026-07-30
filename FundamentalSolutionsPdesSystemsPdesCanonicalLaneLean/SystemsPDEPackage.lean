import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure SystemsPDE where
  unknownCount : Nat
  equationCount : Nat
  operatorMatrix : Type u
  couplingStructure : Prop
  wellPosedness : Prop

def SystemsPDEClosed (S : SystemsPDE) : Prop :=
  S.couplingStructure ∧ S.wellPosedness

structure SystemsPDEEvidence (S : SystemsPDE) where
  couplingStructureClosed : S.couplingStructure
  wellPosednessClosed : S.wellPosedness

theorem systems_pde_closed_from_evidence (S : SystemsPDE)
    (E : SystemsPDEEvidence S) : SystemsPDEClosed S := by
  exact And.intro E.couplingStructureClosed E.wellPosednessClosed

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse