import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FSPWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse