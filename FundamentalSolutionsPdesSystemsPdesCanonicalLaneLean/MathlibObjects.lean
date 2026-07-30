import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure FundamentalSolutionObject where
  space : Type
  pdeSystem : Prop
  fundamentalSolutionExists : Prop
  conclusion : fundamentalSolutionExists

def FundamentalSolutionWitnessClosed (O : FundamentalSolutionObject) : Prop :=
  O.fundamentalSolutionExists

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse