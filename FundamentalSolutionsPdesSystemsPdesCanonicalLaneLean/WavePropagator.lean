import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure WavePropagatorPackage where
  spacetime : Type
  waveOperator : Type
  fundamentalSolnExists : Prop
  finitePropagationSpeed : Prop
  huygensPrinciple : Prop

structure WavePropagatorEvidence (W : WavePropagatorPackage) where
  fundamentalSolnExistsClosed : W.fundamentalSolnExists
  finitePropagationSpeedClosed : W.finitePropagationSpeed
  huygensPrincipleClosed : W.huygensPrinciple

def WavePropagatorClosed (W : WavePropagatorPackage) : Prop :=
  W.fundamentalSolnExists ∧ W.finitePropagationSpeed ∧ W.huygensPrinciple

theorem wave_propagator_closed_from_evidence (W : WavePropagatorPackage) (E : WavePropagatorEvidence W) :
    WavePropagatorClosed W := by
  exact And.intro E.fundamentalSolnExistsClosed
    (And.intro E.finitePropagationSpeedClosed E.huygensPrincipleClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse