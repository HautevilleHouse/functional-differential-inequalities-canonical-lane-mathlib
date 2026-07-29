import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure FunctionalDifferentialInequalityAdmittedObject where
  functionDomain : Type
  space : Type
  inequality : Prop
  regularity : Prop
  conclusion : inequality ∧ regularity

structure AdmissibleClass where
  object : FunctionalDifferentialInequalityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse