import FunctionalDifferentialInequalitiesCanonicalLaneLean.AdmissibleClass

/-!
# Abstract Differential Inequality Package
-/

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure AbstractDifferentialInequalityPackage where
  functionSpace : Type u
  domain : Type v
  operator : Type w
  inequalityRelation : Prop
  domainTopology : TopologicalSpace domain
  operatorContinuous : Prop

def AbstractDifferentialInequalityClosed (P : AbstractDifferentialInequalityPackage) : Prop :=
  P.inequalityRelation

theorem abstract_differential_inequality_closed (P : AbstractDifferentialInequalityPackage) (h : P.inequalityRelation) :
    AbstractDifferentialInequalityClosed P := h

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse