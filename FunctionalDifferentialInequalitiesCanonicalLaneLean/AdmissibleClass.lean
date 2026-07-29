import FunctionalDifferentialInequalitiesCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure AdmissibleClass where
  object : FunctionalDifferentialInequalityAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  FunctionalDifferentialInequalityWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse