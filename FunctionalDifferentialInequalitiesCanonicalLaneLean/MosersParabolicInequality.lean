import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure MosersParabolicInequalityPackage where
  weakSolutionRegularity : Prop
  parabolicHarnack : Prop
  pointwiseEstimate : Prop
  gradientEstimate : Prop

structure MosersParabolicInequalityEvidence (M : MosersParabolicInequalityPackage) where
  weakSolutionRegularityClosed : M.weakSolutionRegularity
  parabolicHarnackClosed : M.parabolicHarnack
  pointwiseEstimateClosed : M.pointwiseEstimate
  gradientEstimateClosed : M.gradientEstimate

def MosersParabolicInequalityClosed (M : MosersParabolicInequalityPackage) : Prop :=
  M.weakSolutionRegularity ∧ M.parabolicHarnack ∧ M.pointwiseEstimate ∧ M.gradientEstimate

theorem mosers_parabolic_inequality_closed_from_evidence (M : MosersParabolicInequalityPackage) (E : MosersParabolicInequalityEvidence M) : MosersParabolicInequalityClosed M := by
  exact And.intro E.weakSolutionRegularityClosed (And.intro E.parabolicHarnackClosed (And.intro E.pointwiseEstimateClosed E.gradientEstimateClosed))

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse