import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

def ConstrainedEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsClosure A :=
  And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
