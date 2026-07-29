import FunctionalDifferentialInequalitiesCanonicalLaneLean.AbstractDifferentialInequality

/-!
# Energy Estimate Package
-/

namespace HautevilleHouse
namespace FunctionalDifferentialInequalitiesCanonicalLaneLean

structure EnergyEstimatePackage (P : AbstractDifferentialInequalityPackage) where
  energyBound : Prop
  energyDecay : Prop
  energyBoundEvidence : energyBound
  energyDecayEvidence : energyDecay

def EnergyEstimateClosed (P : AbstractDifferentialInequalityPackage) (E : EnergyEstimatePackage P) : Prop :=
  E.energyBound ∧ E.energyDecay

theorem energy_estimate_closed (P : AbstractDifferentialInequalityPackage) (E : EnergyEstimatePackage P) :
    EnergyEstimateClosed P E := by
  exact And.intro E.energyBoundEvidence E.energyDecayEvidence

end FunctionalDifferentialInequalitiesCanonicalLaneLean
end HautevilleHouse