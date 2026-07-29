import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure RamseyCassKoopmansModel where
  householdUtility : Type u → ℝ
  capitalStockSequence : ℕ → ℝ
  consumptionSequence : ℕ → ℝ
  capitalAccumulationEquation : Prop
  eulerEquation : Prop
  transversalityCondition : Prop
  equilibriumCapitalPath : capitalAccumulationEquation ∧ eulerEquation ∧ transversalityCondition := by
    intro C
    exact And.intro C.capitalAccumulationEquation (And.intro C.eulerEquation C.transversalityCondition)

structure ConsumptionSavingsEvidence {R : RamseyCassKoopmansModel} where
  capitalAccumulationClosed : R.capitalAccumulationEquation
  eulerEquationClosed : R.eulerEquation
  transversalityConditionClosed : R.transversalityCondition

def ConsumptionSavingsClosed (R : RamseyCassKoopmansModel) : Prop :=
  R.capitalAccumulationEquation ∧ R.eulerEquation ∧ R.transversalityCondition

theorem consumption_savings_closed_from_evidence (R : RamseyCassKoopmansModel)
    (E : ConsumptionSavingsEvidence R) : ConsumptionSavingsClosed R := by
  exact And.intro E.capitalAccumulationClosed (And.intro E.eulerEquationClosed E.transversalityConditionClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse