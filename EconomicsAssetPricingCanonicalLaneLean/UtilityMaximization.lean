import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure UtilityMaximizationPackage where
  agent : EconomicAgent
  budgetConstraint : agent.consumptionSet → Prop
  optimalChoice : agent.consumptionSet
  feasibility : budgetConstraint optimalChoice
  optimality : ∀ x : agent.consumptionSet, budgetConstraint x → agent.preferenceRelation optimalChoice x

def UtilityMaximizationClosed (U : UtilityMaximizationPackage) : Prop :=
  U.feasibility ∧ U.optimality

theorem utility_maximization_closed_from_evidence
    (U : UtilityMaximizationPackage) : UtilityMaximizationClosed U := by
  exact And.intro U.feasibility U.optimality

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse