import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean

structure FundamentalSolnAdmittedObject where
  spaceDomain : Type
  pdeOperator : Type
  fundamentalSolnExists : Prop
  regularity : Prop
  conclusion : fundamentalSolnExists ∧ regularity

def FundamentalSolnWitnessClosed (O : FundamentalSolnAdmittedObject) : Prop :=
  O.fundamentalSolnExists ∧ O.regularity

end FundamentalSolutionsPdesSystemsPdesCanonicalLaneLean
end HautevilleHouse