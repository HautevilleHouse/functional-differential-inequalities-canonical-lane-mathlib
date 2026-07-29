import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure MaximumPrinciplePackage where
  domainType : Type u
  operatorType : Type v
  weakMaximumPrinciple : Prop
  strongMaximumPrinciple : Prop
  maximumPrincipleClosed : Prop

structure MaximumPrincipleEvidence (M : MaximumPrinciplePackage) where
  weakMaximumPrincipleTerm : M.weakMaximumPrinciple
  strongMaximumPrincipleTerm : M.strongMaximumPrinciple
  maximumPrincipleClosedTerm : M.maximumPrincipleClosed

def MaximumPrincipleClosed (M : MaximumPrinciplePackage) : Prop :=
  M.weakMaximumPrinciple ∧ M.strongMaximumPrinciple ∧ M.maximumPrincipleClosed

theorem maximum_principle_closed_from_evidence (M : MaximumPrinciplePackage) (E : MaximumPrincipleEvidence M) :
    MaximumPrincipleClosed M := by
  exact And.intro E.weakMaximumPrincipleTerm (And.intro E.strongMaximumPrincipleTerm E.maximumPrincipleClosedTerm)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse