import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure ArrowDebreuPackage where
  stateSpace : Type u
  assetSet : Type v
  consumptionPlan : Type w
  statePrice : Type x
  completeMarkets : Prop
  noArbitrage : Prop
  equilibriumExists : Prop

structure ArrowDebreuEvidence (A : ArrowDebreuPackage) where
  completeMarketsClosed : A.completeMarkets
  noArbitrageClosed : A.noArbitrage
  equilibriumExistsClosed : A.equilibriumExists

def ArrowDebreuClosed (A : ArrowDebreuPackage) : Prop :=
  A.completeMarkets ∧ A.noArbitrage ∧ A.equilibriumExists

theorem arrow_debreu_closed_from_evidence (A : ArrowDebreuPackage) (E : ArrowDebreuEvidence A) :
    ArrowDebreuClosed A := by
  exact And.intro E.completeMarketsClosed (And.intro E.noArbitrageClosed E.equilibriumExistsClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse