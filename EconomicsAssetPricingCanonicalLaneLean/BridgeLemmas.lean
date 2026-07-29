import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A :=
  A.object.conclusion

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
