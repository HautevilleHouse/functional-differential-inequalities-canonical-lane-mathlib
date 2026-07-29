import FunctionalDifferentialInequalitiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FunctionalDifferentialInequalityWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse