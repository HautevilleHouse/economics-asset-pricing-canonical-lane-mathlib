import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure StochasticDiscountFactor where
  stateSpace : Type u
  discountFactor : Type v
  positive : Prop
  exists : Prop

structure ConsumptionBasedCAPMPackage where
  representativeAgent : Type u
  utilityFunction : Type v
  consumptionGrowth : Type w
  riskFreeRate : Type x
  assetReturn : Type y
  sdfDerived : StochasticDiscountFactor
  eulerEquationHolds : Prop
  linearFactorModel : Prop

structure ConsumptionBasedCAPMEvidence (C : ConsumptionBasedCAPMPackage) where
  sdfDerivedClosed : C.sdfDerived.exists
  eulerEquationHoldsClosed : C.eulerEquationHolds
  linearFactorModelClosed : C.linearFactorModel

def ConsumptionBasedCAPMClosed (C : ConsumptionBasedCAPMPackage) : Prop :=
  C.sdfDerived.exists ∧ C.eulerEquationHolds ∧ C.linearFactorModel

theorem consumption_based_capm_closed_from_evidence (C : ConsumptionBasedCAPMPackage) (E : ConsumptionBasedCAPMEvidence C) :
    ConsumptionBasedCAPMClosed C := by
  exact And.intro E.sdfDerivedClosed (And.intro E.eulerEquationHoldsClosed E.linearFactorModelClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse