[本ページ](https://www.e-stat.go.jp/stat-search/files?page=1&layout=datalist&toukei=00200573&tstat=000001150147&cycle=0&tclass1=000001150151&tclass2=000001150152&tclass3=000001150157&tclass4=000001150160&stat_infid=000032103981&tclass5val=0)よりCSVをDLし、A列(yyyyMM)とB列(総合)以外を削除の上、それぞれカラム名を`month`, `cpi`としています。

上記データはBigQueryの`external_data`データセットの`cpi_tokyo_monthly`テーブルに保存しています。
