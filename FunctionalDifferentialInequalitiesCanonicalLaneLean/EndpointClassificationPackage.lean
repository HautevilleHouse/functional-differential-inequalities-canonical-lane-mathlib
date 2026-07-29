import FunctionalDifferentialInequalitiesCanonicalLaneLean.NonlinearEvolutionPackage

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure EndpointClassificationPackage (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) where
  asymptoticBehavior : Prop
  sharpConstant : Prop
  extremalFunctions : Prop
  endpointMatch : Prop

structure EndpointClassificationEvidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) (Ep : EndpointClassificationPackage A P D E) where
  asymptoticBehaviorClosed : Ep.asymptoticBehavior
  sharpConstantClosed : Ep.sharpConstant
  extremalFunctionsClosed : Ep.extremalFunctions
  endpointMatchClosed : Ep.endpointMatch

def EndpointClassificationClosed (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) (Ep : EndpointClassificationPackage A P D E) : Prop :=
  Ep.asymptoticBehavior ∧ Ep.sharpConstant ∧ Ep.extremalFunctions ∧ Ep.endpointMatch

theorem endpoint_classification_closed_from_evidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) (Ep : EndpointClassificationPackage A P D E) (Ev : EndpointClassificationEvidence A P D E Ep) :
    EndpointClassificationClosed A P D E Ep := by
  exact And.intro Ev.asymptoticBehaviorClosed (And.intro Ev.sharpConstantClosed (And.intro Ev.extremalFunctionsClosed Ev.endpointMatchClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse