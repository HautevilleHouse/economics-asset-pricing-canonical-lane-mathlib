import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AssetPricingModelPackage where
  stateSpace : Type u
  stochasticDiscountFactor : Type v
  assetPriceProcess : Type w
  noArbitrageCondition : Prop
  martingaleMeasureExistence : Prop
  pricingKernel : Prop

structure AssetPricingModelEvidence (M : AssetPricingModelPackage) where
  noArbitrageConditionClosed : M.noArbitrageCondition
  martingaleMeasureExistenceClosed : M.martingaleMeasureExistence
  pricingKernelClosed : M.pricingKernel

def AssetPricingModelClosed (M : AssetPricingModelPackage) : Prop :=
  M.noArbitrageCondition ∧ M.martingaleMeasureExistence ∧ M.pricingKernel

theorem asset_pricing_model_closed_from_evidence (M : AssetPricingModelPackage)
    (Ev : AssetPricingModelEvidence M) : AssetPricingModelClosed M := by
  exact And.intro Ev.noArbitrageConditionClosed (And.intro Ev.martingaleMeasureExistenceClosed Ev.pricingKernelClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
