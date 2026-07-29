import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AssetPricingModel where
  assetType : Type u
  stateSpace : Type v
  discountFactor : ℝ
  payoffMatrix : assetType → stateSpace → ℝ

structure FundamentalTheoremPackage (M : AssetPricingModel) where
  noArbitrage : Prop
  riskNeutralMeasure : Type w
  priceRepresentation : Prop

structure FundamentalTheoremEvidence {M : AssetPricingModel}
    (P : FundamentalTheoremPackage M) where
  noArbitrageClosed : P.noArbitrage
  riskNeutralMeasureClosed : Nonempty P.riskNeutralMeasure
  priceRepresentationClosed : P.priceRepresentation

def FundamentalTheoremClosed {M : AssetPricingModel}
    (P : FundamentalTheoremPackage M) : Prop :=
  P.noArbitrage ∧ Nonempty P.riskNeutralMeasure ∧ P.priceRepresentation

theorem fundamental_theorem_closed_from_evidence
    {M : AssetPricingModel} (P : FundamentalTheoremPackage M)
    (Ev : FundamentalTheoremEvidence P) :
    FundamentalTheoremClosed P :=
  And.intro Ev.noArbitrageClosed
    (And.intro Ev.riskNeutralMeasureClosed Ev.priceRepresentationClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
