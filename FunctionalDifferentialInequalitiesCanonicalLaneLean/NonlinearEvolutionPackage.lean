import FunctionalDifferentialInequalitiesCanonicalLaneLean.DifferentialOperatorPackage

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure NonlinearEvolutionPackage (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) where
  evolutionEquation : Type
  wellPosedness : Prop
  blowupCriteria : Prop
  regularityPropagation : Prop

structure NonlinearEvolutionEvidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) where
  wellPosednessClosed : E.wellPosedness
  blowupCriteriaClosed : E.blowupCriteria
  regularityPropagationClosed : E.regularityPropagation

def NonlinearEvolutionClosed (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) : Prop :=
  E.wellPosedness ∧ E.blowupCriteria ∧ E.regularityPropagation

theorem nonlinear_evolution_closed_from_evidence (A : AdmissibleClass) (P : FunctionalInequalityPackage A) (D : DifferentialOperatorPackage A P) (E : NonlinearEvolutionPackage A P D) (Ev : NonlinearEvolutionEvidence A P D E) :
    NonlinearEvolutionClosed A P D E := by
  exact And.intro Ev.wellPosednessClosed (And.intro Ev.blowupCriteriaClosed Ev.regularityPropagationClosed)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse