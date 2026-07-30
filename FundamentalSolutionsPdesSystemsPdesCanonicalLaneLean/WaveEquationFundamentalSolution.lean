import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure WaveEquationFundamentalSolutionPackage where
  spaceDimension : Nat
  waveSpeed : Prop
  fundamentalSolution : Type u
  supportProperty : Prop
  causalityProperty : Prop
  energyConservation : Prop

structure WaveEquationFundamentalSolutionEvidence (W : WaveEquationFundamentalSolutionPackage) where
  waveSpeedClosed : W.waveSpeed
  fundamentalSolutionDefined : W.fundamentalSolution
  supportPropertyClosed : W.supportProperty
  causalityPropertyClosed : W.causalityProperty
  energyConservationClosed : W.energyConservation

def WaveEquationFundamentalSolutionClosed (W : WaveEquationFundamentalSolutionPackage) : Prop :=
  W.waveSpeed ∧ W.supportProperty ∧ W.causalityProperty ∧ W.energyConservation

theorem wave_equation_fundamental_solution_closed_from_evidence
    (W : WaveEquationFundamentalSolutionPackage) (E : WaveEquationFundamentalSolutionEvidence W) :
    WaveEquationFundamentalSolutionClosed W := by
  exact And.intro E.waveSpeedClosed
    (And.intro E.supportPropertyClosed
      (And.intro E.causalityPropertyClosed E.energyConservationClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse