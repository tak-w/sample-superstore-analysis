CREATE OR REPLACE FUNCTION `sample-superstore-411114.sample_superstore.extract_original_product_name`(input STRING) RETURNS STRING LANGUAGE js AS R"""
const arr = input.split(' ');
arr.shift(); // 配列の先頭 = maker_nameを削除
return arr.join(''); // 半角スペースが混じっているものについては除去
""";
