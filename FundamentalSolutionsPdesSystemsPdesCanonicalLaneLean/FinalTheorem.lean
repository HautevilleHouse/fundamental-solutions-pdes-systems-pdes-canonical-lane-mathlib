import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

def ConstrainedFSPClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_fsp_endgame (A : AdmissibleClass) :
    ConstrainedFSPClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse