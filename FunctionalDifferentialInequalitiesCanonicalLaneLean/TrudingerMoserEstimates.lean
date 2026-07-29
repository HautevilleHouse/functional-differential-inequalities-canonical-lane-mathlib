import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure TrudingerMoserEstimatePackage where
  dimension : ℕ
  criticalExponent : ℝ
  estimateConstant : ℝ
  exponentialIntegrability : Prop

structure TrudingerMoserEstimateEvidence (T : TrudingerMoserEstimatePackage) where
  exponentialIntegrabilityTerm : T.exponentialIntegrability

def TrudingerMoserEstimateClosed (T : TrudingerMoserEstimatePackage) : Prop :=
  T.exponentialIntegrability

theorem trudinger_moser_estimate_closed_from_evidence (T : TrudingerMoserEstimatePackage) (E : TrudingerMoserEstimateEvidence T) :
    TrudingerMoserEstimateClosed T := by
  exact E.exponentialIntegrabilityTerm

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse