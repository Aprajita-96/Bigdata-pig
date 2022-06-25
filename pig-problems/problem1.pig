lines = load 'eBooks/*.txt' as (line:chararray);
words = foreach lines generate FLATTEN(TOKENIZE(line, ' ')) as word;
grouped = group words by word;
wordcount = foreach grouped generate group, COUNT(words);
frequent_words= filter wordcount by $1>=49500;
order_frequent_words= order frequent_words by $1 DESC;
dump order_frequent_words;
