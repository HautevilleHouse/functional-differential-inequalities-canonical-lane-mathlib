import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure HardyInequalitiesPackage where
  dimension : Nat
  weightFunction : Type u
  singularityAtOrigin : Prop
  classicalHardyInequality : Prop
  refinedHardyInequality : Prop
  hardySobolevInequality : Prop

structure HardyInequalitiesEvidence (P : HardyInequalitiesPackage) where
  singularityAtOriginClosed : P.singularityAtOrigin
  classicalHardyClosed : P.classicalHardyInequality
  refinedHardyClosed : P.refinedHardyInequality
  hardySobolevClosed : P.hardySobolevInequality

def HardyInequalitiesClosed (P : HardyInequalitiesPackage) : Prop :=
  P.singularityAtOrigin ∧ P.classicalHardyInequality ∧ P.refinedHardyInequality ∧ P.hardySobolevInequality

theorem hardy_inequalities_closed_from_evidence (P : HardyInequalitiesPackage) (E : HardyInequalitiesEvidence P) :
    HardyInequalitiesClosed P := by
  exact And.intro E.singularityAtOriginClosed (And.intro E.classicalHardyClosed (And.intro E.refinedHardyClosed E.hardySobolevClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse