import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure ConsumptionCAPM where
  representativeAgentUtility : ℝ → ℝ
  consumptionGrowth : ℝ
  assetReturn : ℝ
  riskFreeRate : ℝ
  riskPremium : ℝ
  eulerEquation : riskPremium = riskFreeRate + consumptionGrowth := by
    intro C
    exact C.eulerEquation

structure RiskPremiumEvidence {C : ConsumptionCAPM} where
  eulerEquationClosed : C.eulerEquation

def RiskPremiumClosed (C : ConsumptionCAPM) : Prop :=
  C.eulerEquation

theorem risk_premium_closed_from_evidence (C : ConsumptionCAPM)
    (E : RiskPremiumEvidence C) : RiskPremiumClosed C := by
  exact E.eulerEquationClosed

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse