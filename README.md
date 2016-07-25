# Ibis demo notebook

This is the demo notebook of [Ibis](http://www.ibis-project.org/).

This demo use [MovieLens](http://grouplens.org/datasets/movielens/) 20M data.

[Ibis introduction blog](http://linux.wwing.net/WordPress/?p=2501) in Japanese

## Requirements

- Impala cluster
- ibis-framework
- scikit-learn
- matplotlib
- seaborn

It is assume the following tables:

- tags_pq_s3
- ratings_pq_s3
- movies_pq_s3

You can use `create_table.sql` and `create_parquet_table.sql` to create tables.

## License
MIT License
