import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure UtilityTheoryPackage where
  consumptionSpace : Type u
  preferenceRelation : Type v
  utilityFunction : Type w
  continuityAxiom : Prop
  monotonicityAxiom : Prop
  convexityAxiom : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  continuityAxiomClosed : U.continuityAxiom
  monotonicityAxiomClosed : U.monotonicityAxiom
  convexityAxiomClosed : U.convexityAxiom

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.continuityAxiom ∧ U.monotonicityAxiom ∧ U.convexityAxiom

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage)
    (Ev : UtilityTheoryEvidence U) : UtilityTheoryClosed U := by
  exact And.intro Ev.continuityAxiomClosed (And.intro Ev.monotonicityAxiomClosed Ev.convexityAxiomClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
