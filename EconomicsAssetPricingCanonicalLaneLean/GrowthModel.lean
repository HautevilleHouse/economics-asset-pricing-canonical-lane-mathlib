import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Type u
  capitalAccumulation : Type v
  consumptionAllocation : Type w
  balancedGrowthPath : Prop
  optimalGrowth : Prop
  convergenceProperties : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  balancedGrowthPathClosed : G.balancedGrowthPath
  optimalGrowthClosed : G.optimalGrowth
  convergencePropertiesClosed : G.convergenceProperties

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.balancedGrowthPath ∧ G.optimalGrowth ∧ G.convergenceProperties

theorem growth_model_closed_from_evidence (G : GrowthModelPackage)
    (Ev : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro Ev.balancedGrowthPathClosed (And.intro Ev.optimalGrowthClosed Ev.convergencePropertiesClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
