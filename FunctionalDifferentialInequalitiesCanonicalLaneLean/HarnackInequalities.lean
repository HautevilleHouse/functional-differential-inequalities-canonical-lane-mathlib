import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure HarnackInequalityPackage where
  operatorType : Type u
  harnackConstant : ℝ
  positivityPreserving : Prop
  harnackInequalityClosed : Prop

structure HarnackInequalityEvidence (H : HarnackInequalityPackage) where
  positivityPreservingTerm : H.positivityPreserving
  harnackInequalityTerm : H.harnackInequalityClosed

def HarnackInequalityClosed (H : HarnackInequalityPackage) : Prop :=
  H.positivityPreserving ∧ H.harnackInequalityClosed

theorem harnack_inequality_closed_from_evidence (H : HarnackInequalityPackage) (E : HarnackInequalityEvidence H) :
    HarnackInequalityClosed H := by
  exact And.intro E.positivityPreservingTerm E.harnackInequalityTerm

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse