lines = LOAD 'eBooks/*.txt' AS (line:chararray);
words1 = FOREACH lines GENERATE TOKENIZE(line) as word;
words = FOREACH words1 GENERATE FLATTEN(word) as word;
sizewords = FOREACH words GENERATE SIZE(word) as word;
grouped = GROUP sizewords BY word;
wordcount = FOREACH grouped GENERATE group as size, COUNT(sizewords) as counted;
frequent_words= filter wordcount by counted>=495000;
ordered_frequent_words= order frequent_words by size desc;
dump ordered_frequent_words;

