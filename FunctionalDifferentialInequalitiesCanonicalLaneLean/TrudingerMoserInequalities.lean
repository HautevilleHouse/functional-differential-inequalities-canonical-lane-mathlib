import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure TrudingerMoserInequalitiesPackage where
  dimension : Nat
  boundedDomain : Prop
  exponentialIntegrability : Prop
  criticalSobolevExponent : Nat
  adamsInequality : Prop

structure TrudingerMoserInequalitiesEvidence (P : TrudingerMoserInequalitiesPackage) where
  boundedDomainClosed : P.boundedDomain
  exponentialIntegrabilityClosed : P.exponentialIntegrability
  adamsInequalityClosed : P.adamsInequality

def TrudingerMoserInequalitiesClosed (P : TrudingerMoserInequalitiesPackage) : Prop :=
  P.boundedDomain ∧ P.exponentialIntegrability ∧ P.adamsInequality

theorem trudinger_moser_inequalities_closed_from_evidence (P : TrudingerMoserInequalitiesPackage) (E : TrudingerMoserInequalitiesEvidence P) :
    TrudingerMoserInequalitiesClosed P := by
  exact And.intro E.boundedDomainClosed (And.intro E.exponentialIntegrabilityClosed E.adamsInequalityClosed)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse