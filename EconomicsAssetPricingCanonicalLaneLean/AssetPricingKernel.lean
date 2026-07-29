import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure StochasticDiscountFactorPackage where
  stateSpace : Type u
  probabilityMeasure : stateSpace → ℝ
  discountFactor : stateSpace → ℝ
  assetPrices : List (stateSpace → ℝ)
  assetPayoffs : List (stateSpace → ℝ)
  pricingEquation : Prop
  noArbitrageCondition : Prop
  sdfExists : pricingEquation ∧ noArbitrageCondition := by
    intro P
    exact And.intro P.pricingEquation P.noArbitrageCondition

structure SDFEvidence {S : StochasticDiscountFactorPackage} where
  pricingEquationClosed : S.pricingEquation
  noArbitrageConditionClosed : S.noArbitrageCondition

def AssetPricingKernelClosed (S : StochasticDiscountFactorPackage) : Prop :=
  S.pricingEquation ∧ S.noArbitrageCondition

theorem asset_pricing_kernel_closed_from_evidence (S : StochasticDiscountFactorPackage)
    (E : SDFEvidence S) : AssetPricingKernelClosed S := by
  exact And.intro E.pricingEquationClosed E.noArbitrageConditionClosed

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse