import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AssetMarketPackage where
  agentCount : Nat
  assetCount : Nat
  endowment : Type u
  preference : Type v
  priceVector : Type w
  endowmentLawful : Prop
  preferenceLawful : Prop
  marketClearingCondition : Prop

structure AssetMarketEvidence (M : AssetMarketPackage) where
  endowmentLawfulClosed : M.endowmentLawful
  preferenceLawfulClosed : M.preferenceLawful
  marketClearingConditionClosed : M.marketClearingCondition

def AssetMarketClosed (M : AssetMarketPackage) : Prop :=
  M.endowmentLawful ∧ M.preferenceLawful ∧ M.marketClearingCondition

theorem asset_market_closed_from_evidence (M : AssetMarketPackage) (E : AssetMarketEvidence M) :
    AssetMarketClosed M := by
  exact And.intro E.endowmentLawfulClosed (And.intro E.preferenceLawfulClosed E.marketClearingConditionClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse