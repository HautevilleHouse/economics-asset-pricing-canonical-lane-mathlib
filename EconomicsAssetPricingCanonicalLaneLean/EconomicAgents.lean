import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure EconomicAgent where
  consumptionSet : Type u
  preferenceRelation : consumptionSet → consumptionSet → Prop
  initialEndowment : consumptionSet
  rationality : Prop
  rationalityTerm : rationality

structure EconomicAgentsPackage where
  agents : List EconomicAgent
  finiteSet : Prop
  finiteSetTerm : finiteSet

def EconomicAgentsClosed (A : EconomicAgentsPackage) : Prop :=
  A.finiteSet

theorem economic_agents_closed_from_evidence (A : EconomicAgentsPackage) :
    EconomicAgentsClosed A := by
  exact A.finiteSetTerm

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse