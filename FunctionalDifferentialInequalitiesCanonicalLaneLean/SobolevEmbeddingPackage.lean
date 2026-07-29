import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure SobolevEmbeddingPackage where
  exponentRange : Prop
  embeddingConstants : Prop
  compactEmbedding : Prop
  traceEmbedding : Prop

structure SobolevEmbeddingEvidence (S : SobolevEmbeddingPackage) where
  exponentRangeClosed : S.exponentRange
  embeddingConstantsClosed : S.embeddingConstants
  compactEmbeddingClosed : S.compactEmbedding
  traceEmbeddingClosed : S.traceEmbedding

def SobolevEmbeddingClosed (S : SobolevEmbeddingPackage) : Prop :=
  S.exponentRange ∧ S.embeddingConstants ∧ S.compactEmbedding ∧ S.traceEmbedding

theorem sobolev_embedding_closed_from_evidence (S : SobolevEmbeddingPackage) (E : SobolevEmbeddingEvidence S) : SobolevEmbeddingClosed S := by
  exact And.intro E.exponentRangeClosed (And.intro E.embeddingConstantsClosed (And.intro E.compactEmbeddingClosed E.traceEmbeddingClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse