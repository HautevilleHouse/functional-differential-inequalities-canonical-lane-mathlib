import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure CaffarelliKohnNirenbergInequalityPackage where
  interpolationWeights : Prop
  optimalExponents : Prop
  scalingInvariance : Prop
  localVersion : Prop

structure CaffarelliKohnNirenbergInequalityEvidence (C : CaffarelliKohnNirenbergInequalityPackage) where
  interpolationWeightsClosed : C.interpolationWeights
  optimalExponentsClosed : C.optimalExponents
  scalingInvarianceClosed : C.scalingInvariance
  localVersionClosed : C.localVersion

def CaffarelliKohnNirenbergInequalityClosed (C : CaffarelliKohnNirenbergInequalityPackage) : Prop :=
  C.interpolationWeights ∧ C.optimalExponents ∧ C.scalingInvariance ∧ C.localVersion

theorem caffarelli_kohn_nirenberg_inequality_closed_from_evidence (C : CaffarelliKohnNirenbergInequalityPackage) (E : CaffarelliKohnNirenbergInequalityEvidence C) : CaffarelliKohnNirenbergInequalityClosed C := by
  exact And.intro E.interpolationWeightsClosed (And.intro E.optimalExponentsClosed (And.intro E.scalingInvarianceClosed E.localVersionClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse