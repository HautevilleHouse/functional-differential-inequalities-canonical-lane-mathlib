import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure TrudingerMoserInequalityPackage where
  criticalExponent : Prop
  exponentialIntegrability : Prop
  sharpConstant : Prop
  dimensionBound : Prop

structure TrudingerMoserInequalityEvidence (T : TrudingerMoserInequalityPackage) where
  criticalExponentClosed : T.criticalExponent
  exponentialIntegrabilityClosed : T.exponentialIntegrability
  sharpConstantClosed : T.sharpConstant
  dimensionBoundClosed : T.dimensionBound

def TrudingerMoserInequalityClosed (T : TrudingerMoserInequalityPackage) : Prop :=
  T.criticalExponent ∧ T.exponentialIntegrability ∧ T.sharpConstant ∧ T.dimensionBound

theorem trudinger_moser_inequality_closed_from_evidence (T : TrudingerMoserInequalityPackage) (E : TrudingerMoserInequalityEvidence T) : TrudingerMoserInequalityClosed T := by
  exact And.intro E.criticalExponentClosed (And.intro E.exponentialIntegrabilityClosed (And.intro E.sharpConstantClosed E.dimensionBoundClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse