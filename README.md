# Ibis demo notebook

This is the demo notebook of [Ibis](http://www.ibis-project.org/).

This demo use [MovieLens](http://grouplens.org/datasets/movielens/) 20M data.

- ibis_demo_en.ipynb
	- Full demo of ibis, seaborn and scikit-learn
- ibis_demo_en_short.ipynb
	- Short version of `ibis_demo_en.ipynb`
- ibis_demo.ipynb
	- Full demo (Japanese version)
- ibis_demo_short.ipynb
	- Short version of `ibis_demo.ipynb`
- ibis_demo_redshift.ipynb
	- Redshift version of `ibis_demo.ipynb`. Not working correctly

## For Japanese
日本語のIbis導入の説明は[こちらのblog](http://linux.wwing.net/WordPress/?p=2501)がわかりやすいです。

概要はこちらの[スライド](http://www.slideshare.net/Cloudera_jp/ibis-pandas-summerds)も参考にしてください。

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
