import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure FunctionalInequalitySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure FunctionalInequalityObject where
  space : FunctionalInequalitySpace
  inequalityStatement : Prop
  solutionClass : Type
  admissibleNorm : Type
  functionalInequalityHolds : Prop
  conclusion : functionalInequalityHolds

structure FunctionalInequalityEndgameState where
  object : FunctionalInequalityObject

def FunctionalInequalityWitnessClosed (O : FunctionalInequalityObject) : Prop :=
  O.functionalInequalityHolds

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse