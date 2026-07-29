import FunctionalDifferentialInequalitiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure FunctionalInequalityPackage (A : AdmissibleClass) where
  functionSpace : Type
  norm : Type
  inequality : Prop
  regularity : Prop
  boundaryConditions : Prop

structure FunctionalInequalityEvidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) where
  inequalityClosed : P.inequality
  regularityClosed : P.regularity
  boundaryConditionsClosed : P.boundaryConditions

def FunctionalInequalityClosed (A : AdmissibleClass) (P : FunctionalInequalityPackage A) : Prop :=
  P.inequality ∧ P.regularity ∧ P.boundaryConditions

theorem functional_inequality_closed_from_evidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (E : FunctionalInequalityEvidence A P) :
    FunctionalInequalityClosed A P := by
  exact And.intro E.inequalityClosed (And.intro E.regularityClosed E.boundaryConditionsClosed)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse