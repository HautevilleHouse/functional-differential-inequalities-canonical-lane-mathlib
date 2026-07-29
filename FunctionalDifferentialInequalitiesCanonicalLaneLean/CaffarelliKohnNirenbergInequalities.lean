import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure CaffarelliKohnNirenbergInequalitiesPackage where
  dimension : Nat
  exponents : Prod (Prod Nat Nat) Nat
  weightExponents : Prod (Prod Int Int) Int
  inequalityStatement : Prop
  optimalConstantKnown : Prop
  radialCaseProved : Prop

structure CaffarelliKohnNirenbergInequalitiesEvidence (P : CaffarelliKohnNirenbergInequalitiesPackage) where
  inequalityStatementClosed : P.inequalityStatement
  optimalConstantKnownClosed : P.optimalConstantKnown
  radialCaseProvedClosed : P.radialCaseProved

def CaffarelliKohnNirenbergInequalitiesClosed (P : CaffarelliKohnNirenbergInequalitiesPackage) : Prop :=
  P.inequalityStatement ∧ P.optimalConstantKnown ∧ P.radialCaseProved

theorem ckn_inequalities_closed_from_evidence (P : CaffarelliKohnNirenbergInequalitiesPackage) (E : CaffarelliKohnNirenbergInequalitiesEvidence P) :
    CaffarelliKohnNirenbergInequalitiesClosed P := by
  exact And.intro E.inequalityStatementClosed (And.intro E.optimalConstantKnownClosed E.radialCaseProvedClosed)

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse