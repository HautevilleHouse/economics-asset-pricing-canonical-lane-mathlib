import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure GeneralEquilibriumPackage where
  commoditiesSet : Type u
  agents : Type v
  preferencesProfile : Type w
  endowmentAllocation : Type z
  competitiveEquilibriumExistence : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  coreAllocation : Prop

structure GeneralEquilibriumEvidence (G : GeneralEquilibriumPackage) where
  competitiveEquilibriumExistenceClosed : G.competitiveEquilibriumExistence
  firstWelfareTheoremClosed : G.firstWelfareTheorem
  secondWelfareTheoremClosed : G.secondWelfareTheorem
  coreAllocationClosed : G.coreAllocation

def GeneralEquilibriumClosed (G : GeneralEquilibriumPackage) : Prop :=
  G.competitiveEquilibriumExistence ∧ G.firstWelfareTheorem ∧ G.secondWelfareTheorem ∧ G.coreAllocation

theorem general_equilibrium_closed_from_evidence (G : GeneralEquilibriumPackage)
    (Ev : GeneralEquilibriumEvidence G) : GeneralEquilibriumClosed G := by
  exact And.intro Ev.competitiveEquilibriumExistenceClosed (And.intro Ev.firstWelfareTheoremClosed (And.intro Ev.secondWelfareTheoremClosed Ev.coreAllocationClosed))

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
