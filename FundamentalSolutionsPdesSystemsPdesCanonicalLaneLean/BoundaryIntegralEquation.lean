import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure BoundaryIntegralEquationPackage where
  boundaryOperator : Type u
  fredholmProperty : Prop
  indexComputed : ℤ
  invertibility : Prop
  spectralEquivalence : Prop

structure BoundaryIntegralEquationEvidence (B : BoundaryIntegralEquationPackage) where
  fredholmPropertyClosed : B.fredholmProperty
  invertibilityClosed : B.invertibility
  spectralEquivalenceClosed : B.spectralEquivalence

def BoundaryIntegralEquationClosed (B : BoundaryIntegralEquationPackage) : Prop :=
  B.fredholmProperty ∧ B.invertibility ∧ B.spectralEquivalence

theorem boundary_integral_equation_closed_from_evidence (B : BoundaryIntegralEquationPackage) (E : BoundaryIntegralEquationEvidence B) : BoundaryIntegralEquationClosed B := by
  exact And.intro E.fredholmPropertyClosed (And.intro E.invertibilityClosed E.spectralEquivalenceClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse