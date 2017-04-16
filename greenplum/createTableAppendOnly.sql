CREATE TABLE ad.camoaigncost(
InfoKey int,
EntityKey Int,
AccountID bigint，
AccountKey smallint，
CampaignID bigint，
CampaignKey Int,
EntitySnapshotKey int,
DateTimeKey Int,
ClickCount int,
ImpressCount bigint,
Cost decimal,
Investment decimal,
KeywordWeightedRank decimal,
RankMultiplyImpression decimal,
KeywordWeightedQuality decimal,
QualityMultiplyImpression decimal,
Device int,
Keyword10WeightedQuality decimal,
Quality10MultiplyImpression decimal
) 
WITH (appendonly=true, orientation=column)
distributed by (InfoKey)
partition by range(DateTimeKey)
(
 partition pa_before201404 start (20000::Int) END (28441::Int),
 partition pa201404 start (28441::Int) END (29161::Int),
 partition pa201405 start (29161::Int) END (29905::Int),
 partition pa201406 start (29905::Int) END (30624::Int),
 partition pa_after201406 start (30624::Int) END (60000::Int)
)