import Mathlib.Data.Real.Basic

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AdmittedAssetPricingObject where
  markets : Type
  equilibriumPrices : Type
  existsEquilibrium : Prop
  conclusion : existsEquilibrium

def AssetPricingWitnessClosed (O : AdmittedAssetPricingObject) : Prop :=
  O.existsEquilibrium

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse