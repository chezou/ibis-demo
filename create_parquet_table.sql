create external table `links_pq_s3` (`movieid` bigint, `imdbid` bigint, `tmdbid` bigint) 
stored as parquet 
location 's3a://YOURBUCKETNAME/ml-20m_refined/links_pq_s3'
;

create external table `movies_pq_s3` (`movieid` bigint, `title` string, `genres` string) 
stored as parquet 
location 's3a://YOURBUCKETNAME/ml-20m_refined/movies_pq_s3'
;

create external table `ratings_pq_s3` (`userid` bigint, `movieid` bigint, `rating` float, `timestamp` bigint) 
stored as parquet 
location 's3a://YOURBUCKETNAME/ml-20m_refined/ratings_pq_s3'
;

create external table `tags_pq_s3` (`userid` bigint, `movieid` bigint, `tag` string, `timestamp` bigint) 
stored as parquet 
location 's3a://YOURBUCKETNAME/ml-20m_refined/tags_pq_s3'
;

insert into links_pq_s3 select * from links;
insert into movies_pq_s3 select * from movies;
insert into ratings_pq_s3 select * from ratings;
insert into tags_pq_s3 select * from tags;

compute stats links_pq_s3;
compute stats movies_pq_s3;
compute stats ratings_pq_s3;
compute stats tags_pq_s3;
