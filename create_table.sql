-- Use Movielens 20M data: http://files.grouplens.org/datasets/movielens/ml-20m.zip
-- Assuming following directory
-- /ml-20m/links/links.csv
--        /movies/movies.csv
--        /ratings/ratings.csv
--        /tags/tags.csv

create external table `links` (`movieid` bigint, `imdbid` bigint, `tmdbid` bigint) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
location 's3a://YOURBUCKETNAME/ml-20m/links'
tblproperties('skip.header.line.count'='1');

create external table `movies` (`movieid` bigint, `title` string, `genres` string) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
location 's3a://YOURBUCKETNAME/ml-20m/movies'
tblproperties('skip.header.line.count'='1');

create external table `ratings` (`userid` bigint, `movieid` bigint, `rating` float, `timestamp` bigint) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
location 's3a://YOURBUCKETNAME/ml-20m/ratings'
tblproperties('skip.header.line.count'='1');

create external table `tags` (`userid` bigint, `movieid` bigint, `tag` string, `timestamp` bigint) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
location 's3a://YOURBUCKETNAME/ml-20m/tags'
tblproperties('skip.header.line.count'='1');