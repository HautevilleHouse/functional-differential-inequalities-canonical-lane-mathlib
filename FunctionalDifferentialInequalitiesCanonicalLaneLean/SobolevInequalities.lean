import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure SobolevInequalitiesPackage where
  domainType : Type u
  boundaryRegularity : Prop
  gagliardoNirenbergSobolev : Prop
  poincareInequality : Prop
  sobolevEmbedding : Prop

structure SobolevInequalitiesEvidence (P : SobolevInequalitiesPackage) where
  boundaryRegularityClosed : P.boundaryRegularity
  gagNirSobClosed : P.gagliardoNirenbergSobolev
  poincareInequalityClosed : P.poincareInequality
  sobolevEmbeddingClosed : P.sobolevEmbedding

def SobolevInequalitiesClosed (P : SobolevInequalitiesPackage) : Prop :=
  P.boundaryRegularity ∧ P.gagliardoNirenbergSobolev ∧ P.poincareInequality ∧ P.sobolevEmbedding

theorem sobolev_inequalities_closed_from_evidence (P : SobolevInequalitiesPackage) (E : SobolevInequalitiesEvidence P) :
    SobolevInequalitiesClosed P := by
  exact And.intro E.boundaryRegularityClosed (And.intro E.gagNirSobClosed (And.intro E.poincareInequalityClosed E.sobolevEmbeddingClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse