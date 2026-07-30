import FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure AdmittedObject where
  space : Type
  topology : TopologicalSpace space
  fundamentalSolutionType : Type
  solutionExists : Prop
  conclusion : solutionExists

def FundamentalSolutionWitnessClosed (O : AdmittedObject) : Prop :=
  O.solutionExists

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse