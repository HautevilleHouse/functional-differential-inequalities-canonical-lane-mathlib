import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

def ConstrainedFunctionalDifferentialInequalitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_differential_inequalities_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalDifferentialInequalitiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse