import FunctionalDifferentialInequalitiesCanonicalLaneLean.FunctionalInequalityPackage

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure DifferentialOperatorPackage (A : AdmissibleClass) (P : FunctionalInequalityPackage A) where
  operatorType : Type
  ellipticity : Prop
  coercivity : Prop
  spectralGap : Prop

structure DifferentialOperatorEvidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) where
  ellipticityClosed : D.ellipticity
  coercivityClosed : D.coercivity
  spectralGapClosed : D.spectralGap

def DifferentialOperatorClosed (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) : Prop :=
  D.ellipticity ∧ D.coercivity ∧ D.spectralGap

theorem differential_operator_closed_from_evidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : DifferentialOperatorEvidence A P D) :
    DifferentialOperatorClosed A P D := by
  exact And.intro E.ellipticityClosed (And.intro E.coercivityClosed E.spectralGapClosed)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse