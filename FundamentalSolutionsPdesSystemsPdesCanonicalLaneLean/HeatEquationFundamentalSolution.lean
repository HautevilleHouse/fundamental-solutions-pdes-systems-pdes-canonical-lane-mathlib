import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure HeatEquationFundamentalSolutionPackage where
  spaceDimension : Nat
  timeInterval : Prop
  heatKernel : Type u
  positivityProperty : Prop
  reproductionProperty : Prop
  asymptoticProperty : Prop

structure HeatEquationFundamentalSolutionEvidence (H : HeatEquationFundamentalSolutionPackage) where
  timeIntervalClosed : H.timeInterval
  heatKernelDefined : H.heatKernel
  positivityPropertyClosed : H.positivityProperty
  reproductionPropertyClosed : H.reproductionProperty
  asymptoticPropertyClosed : H.asymptoticProperty

def HeatEquationFundamentalSolutionClosed (H : HeatEquationFundamentalSolutionPackage) : Prop :=
  H.timeInterval ∧ H.positivityProperty ∧ H.reproductionProperty ∧ H.asymptoticProperty

theorem heat_equation_fundamental_solution_closed_from_evidence
    (H : HeatEquationFundamentalSolutionPackage) (E : HeatEquationFundamentalSolutionEvidence H) :
    HeatEquationFundamentalSolutionClosed H := by
  exact And.intro E.timeIntervalClosed
    (And.intro E.positivityPropertyClosed
      (And.intro E.reproductionPropertyClosed E.asymptoticPropertyClosed))

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse