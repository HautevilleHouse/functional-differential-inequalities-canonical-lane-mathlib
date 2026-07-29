import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure MoserIterationPackage where
  ellipticOperator : Type u
  deGiorgiClass : Prop
  localBoundedness : Prop
  holderRegularity : Prop
  harnackInequality : Prop
  iterationScheme : Prop

structure MoserIterationEvidence (P : MoserIterationPackage) where
  deGiorgiClassClosed : P.deGiorgiClass
  localBoundednessClosed : P.localBoundedness
  holderRegularityClosed : P.holderRegularity
  harnackInequalityClosed : P.harnackInequality
  iterationSchemeClosed : P.iterationScheme

def MoserIterationClosed (P : MoserIterationPackage) : Prop :=
  P.deGiorgiClass ∧ P.localBoundedness ∧ P.holderRegularity ∧ P.harnackInequality ∧ P.iterationScheme

theorem moser_iteration_closed_from_evidence (P : MoserIterationPackage) (E : MoserIterationEvidence P) :
    MoserIterationClosed P := by
  exact And.intro E.deGiorgiClassClosed (And.intro E.localBoundednessClosed (And.intro E.holderRegularityClosed (And.intro E.harnackInequalityClosed E.iterationSchemeClosed)))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse