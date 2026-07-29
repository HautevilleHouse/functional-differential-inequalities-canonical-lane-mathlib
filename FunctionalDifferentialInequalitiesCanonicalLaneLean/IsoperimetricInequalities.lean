import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure IsoperimetricInequalityPackage where
  domainType : Type u
  dimension : ℕ
  isoperimetricConstant : ℝ
  sobolevEmbedding : Prop
  isoperimetricInequalityClosed : Prop

structure IsoperimetricInequalityEvidence (I : IsoperimetricInequalityPackage) where
  sobolevEmbeddingTerm : I.sobolevEmbedding
  isoperimetricInequalityClosedTerm : I.isoperimetricInequalityClosed

def IsoperimetricInequalityClosed (I : IsoperimetricInequalityPackage) : Prop :=
  I.sobolevEmbedding ∧ I.isoperimetricInequalityClosed

theorem isoperimetric_inequality_closed_from_evidence (I : IsoperimetricInequalityPackage) (E : IsoperimetricInequalityEvidence I) :
    IsoperimetricInequalityClosed I := by
  exact And.intro E.sobolevEmbeddingTerm E.isoperimetricInequalityClosedTerm

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse