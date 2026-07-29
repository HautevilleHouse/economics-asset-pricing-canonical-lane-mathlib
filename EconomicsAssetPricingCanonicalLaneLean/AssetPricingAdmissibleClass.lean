import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure AssetPricingAdmissibleObject where
  modelType : String
  equilibriumExists : Prop
  pricingClosed : Prop
  remainderRecorded : Prop
  conclusion : pricingClosed

structure AssetPricingAdmissibleClass where
  object : AssetPricingAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AssetPricingAdmissibleClass) : Prop :=
  A.object.pricingClosed ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse