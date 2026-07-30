import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure PotentialLayerJumpPackage where
  layerType : String
  singleLayerJump : Prop
  doubleLayerJump : Prop
  continuity : Prop
  coercivity : Prop

structure PotentialLayerJumpEvidence (P : PotentialLayerJumpPackage) where
  singleLayerJumpClosed : P.singleLayerJump
  doubleLayerJumpClosed : P.doubleLayerJump
  continuityClosed : P.continuity
  coercivityClosed : P.coercivity

def PotentialLayerJumpClosed (P : PotentialLayerJumpPackage) : Prop :=
  P.singleLayerJump ∧ P.doubleLayerJump ∧ P.continuity ∧ P.coercivity

theorem potential_layer_jump_closed_from_evidence (P : PotentialLayerJumpPackage) (E : PotentialLayerJumpEvidence P) : PotentialLayerJumpClosed P := by
  exact And.intro E.singleLayerJumpClosed (And.intro E.doubleLayerJumpClosed (And.intro E.continuityClosed E.coercivityClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse