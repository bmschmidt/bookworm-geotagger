
all: stanford-ner-2014-01-04 metadata.txt

stanford-ner-2014-01-04:
	wget http://nlp.stanford.edu/software/stanford-ner-2014-01-04.zip
	unzip stanford-ner-2014-01-04.zip	

metadata.txt:
	cat ../../files/texts/input.txt | parallel  --block-size 1M --pipe ./tagAChunk.sh > metadata.txt

bookwormMetadata:
	cd ../..; python OneClick.py 
