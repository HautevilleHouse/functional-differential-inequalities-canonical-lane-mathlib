import FunctionalDifferentialInequalitiesCanonicalLaneLean.AbstractDifferentialInequality

/-!
# First-Order Differential Inequality Package
-/

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure FirstOrderInequalityPackage (P : AbstractDifferentialInequalityPackage) where
  gradientBound : Prop
  maximumPrinciple : Prop
  gradientBoundEvidence : gradientBound
  maximumPrincipleEvidence : maximumPrinciple

def FirstOrderInequalityClosed (P : AbstractDifferentialInequalityPackage) (F : FirstOrderInequalityPackage P) : Prop :=
  F.gradientBound ∧ F.maximumPrinciple

theorem first_order_inequality_closed (P : AbstractDifferentialInequalityPackage) (F : FirstOrderInequalityPackage P) :
    FirstOrderInequalityClosed P F := by
  exact And.intro F.gradientBoundEvidence F.maximumPrincipleEvidence

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse