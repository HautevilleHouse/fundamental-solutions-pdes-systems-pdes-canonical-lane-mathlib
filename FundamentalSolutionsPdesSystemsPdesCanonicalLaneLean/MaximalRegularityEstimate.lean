import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure MaximalRegularityEstimatePackage where
  operatorType : String
  functionalSpace : Type u
  temporalRegularity : Prop
  spatialRegularity : Prop
  bootstrapEstimate : Prop
  uniformConstant : ℝ

structure MaximalRegularityEstimateEvidence (M : MaximalRegularityEstimatePackage) where
  temporalRegularityClosed : M.temporalRegularity
  spatialRegularityClosed : M.spatialRegularity
  bootstrapEstimateClosed : M.bootstrapEstimate

def MaximalRegularityEstimateClosed (M : MaximalRegularityEstimatePackage) : Prop :=
  M.temporalRegularity ∧ M.spatialRegularity ∧ M.bootstrapEstimate

theorem maximal_regularity_estimate_closed_from_evidence (M : MaximalRegularityEstimatePackage) (E : MaximalRegularityEstimateEvidence M) : MaximalRegularityEstimateClosed M := by
  exact And.intro E.temporalRegularityClosed (And.intro E.spatialRegularityClosed E.bootstrapEstimateClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse