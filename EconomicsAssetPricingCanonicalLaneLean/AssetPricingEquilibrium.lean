import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AssetPricingEquilibriumPackage where
  economy : Type u
  consumerPreferences : Type v
  productionSets : Type w
  priceVector : Type z
  equilibriumExistence : Prop
  equilibriumAllocation : Prop
  equilibriumPrices : Prop
  welfareProperties : Prop

structure AssetPricingEquilibriumEvidence (E : AssetPricingEquilibriumPackage) where
  equilibriumExistenceClosed : E.equilibriumExistence
  equilibriumAllocationClosed : E.equilibriumAllocation
  equilibriumPricesClosed : E.equilibriumPrices
  welfarePropertiesClosed : E.welfareProperties

def AssetPricingEquilibriumClosed (E : AssetPricingEquilibriumPackage) : Prop :=
  E.equilibriumExistence ∧ E.equilibriumAllocation ∧ E.equilibriumPrices ∧ E.welfareProperties

theorem asset_pricing_equilibrium_closed_from_evidence (E : AssetPricingEquilibriumPackage)
    (Ev : AssetPricingEquilibriumEvidence E) : AssetPricingEquilibriumClosed E := by
  exact And.intro Ev.equilibriumExistenceClosed (And.intro Ev.equilibriumAllocationClosed (And.intro Ev.equilibriumPricesClosed Ev.welfarePropertiesClosed))

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
