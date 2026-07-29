import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure ConsumptionBasedModel where
  consumer : Type u
  consumptionProcess : consumer → ℝ → ℝ
  assetReturns : (consumer → ℝ → ℝ) → ℝ
  pricingKernel : ℝ → ℝ
  expectedUtility : (ℝ → ℝ) → ℝ

def ccAPM (M : ConsumptionBasedModel) : Prop := 
  ∀ a b : ℝ, M.expectedUtility (λ c => a * M.assetReturns c + b * M.consumptionProcess c) = 
    a * M.expectedUtility (λ c => M.assetReturns c) + b * M.expectedUtility (λ c => M.consumptionProcess c)

structure ConsumptionCAPMProof (M : ConsumptionBasedModel) where
  linearPricing : ccAPM M
  betaRepresentation : ∃ β : ℝ, ∀ asset, M.expectedUtility (λ c => M.assetReturns c) = 
    β * M.expectedUtility (λ c => M.consumptionProcess c)

theorem ccAPM_holds (M : ConsumptionBasedModel) (h : ConsumptionCAPMProof M) : ccAPM M := h.linearPricing

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse