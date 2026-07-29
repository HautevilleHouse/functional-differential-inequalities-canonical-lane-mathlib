import FunctionalDifferentialInequalitiesCanonicalLaneLean.AbstractDifferentialInequality

/-!
# Sobolev Inequality Package
-/

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure SobolevInequalityPackage (P : AbstractDifferentialInequalityPackage) where
  sobolevEmbedding : Prop
  sobolevNormBound : Prop
  sobolevEmbeddingEvidence : sobolevEmbedding
  sobolevNormBoundEvidence : sobolevNormBound

def SobolevInequalityClosed (P : AbstractDifferentialInequalityPackage) (S : SobolevInequalityPackage P) : Prop :=
  S.sobolevEmbedding ∧ S.sobolevNormBound

theorem sobolev_inequality_closed (P : AbstractDifferentialInequalityPackage) (S : SobolevInequalityPackage P) :
    SobolevInequalityClosed P S := by
  exact And.intro S.sobolevEmbeddingEvidence S.sobolevNormBoundEvidence

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse