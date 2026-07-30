import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure AdmissibleClass where
  object : FSPAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FSPWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse