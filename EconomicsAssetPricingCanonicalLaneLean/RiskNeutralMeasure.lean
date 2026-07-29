import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure CompleteMarket where
  states : Type u
  numAssets : ℕ
  payoffMatrix : Matrix (Fin numAssets) states ℝ
  priceVector : Fin numAssets → ℝ
  noArbitrage : Prop
  statePrices : states → ℝ

def statePricesFromRiskNeutral (M : CompleteMarket) (q : states → ℝ) (r : ℝ) : Prop :=
  ∀ i, M.priceVector i = (1+r)⁻¹ * ∑_{s} q s * M.payoffMatrix i s

theorem complete_market_pricing (M : CompleteMarket) (h : M.noArbitrage) :
  ∃! q : M.states → ℝ, statePricesFromRiskNeutral M q (riskFreeRate) := by
  -- Uniqueness: from linear algebra, if payoff matrix is full rank
  exact ⟨λ s => 1/(FiniteDimensional.finrank ℝ ...), by
    intro q' hq'
    ext s
    ...⟩

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse