import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsAssetPricingCanonicalLaneLean

structure PortfolioOptimizationPackage where
  investorPreferences : Type u
  assetUniverse : Type v
  portfolioWeights : Type w
  optimalPortfolioExistence : Prop
  eulerConditions : Prop
  riskReturnTradeoff : Prop

structure PortfolioOptimizationEvidence (P : PortfolioOptimizationPackage) where
  optimalPortfolioExistenceClosed : P.optimalPortfolioExistence
  eulerConditionsClosed : P.eulerConditions
  riskReturnTradeoffClosed : P.riskReturnTradeoff

def PortfolioOptimizationClosed (P : PortfolioOptimizationPackage) : Prop :=
  P.optimalPortfolioExistence ∧ P.eulerConditions ∧ P.riskReturnTradeoff

theorem portfolio_optimization_closed_from_evidence (P : PortfolioOptimizationPackage)
    (Ev : PortfolioOptimizationEvidence P) : PortfolioOptimizationClosed P := by
  exact And.intro Ev.optimalPortfolioExistenceClosed (And.intro Ev.eulerConditionsClosed Ev.riskReturnTradeoffClosed)

end EconomicsAssetPricingCanonicalLaneLean
end HautevilleHouse
