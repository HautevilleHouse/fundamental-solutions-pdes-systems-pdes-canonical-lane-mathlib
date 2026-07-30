import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure HeatKernelPackage where
  manifold : Type
  metric : Type
  heatKernelExists : Prop
  shortTimeAsymptotics : Prop
  parametrixConstruction : Prop

structure HeatKernelEvidence (H : HeatKernelPackage) where
  heatKernelExistsClosed : H.heatKernelExists
  shortTimeAsymptoticsClosed : H.shortTimeAsymptotics
  parametrixConstructionClosed : H.parametrixConstruction

def HeatKernelClosed (H : HeatKernelPackage) : Prop :=
  H.heatKernelExists ∧ H.shortTimeAsymptotics ∧ H.parametrixConstruction

theorem heat_kernel_closed_from_evidence (H : HeatKernelPackage) (E : HeatKernelEvidence H) :
    HeatKernelClosed H := by
  exact And.intro E.heatKernelExistsClosed
    (And.intro E.shortTimeAsymptoticsClosed E.parametrixConstructionClosed)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse