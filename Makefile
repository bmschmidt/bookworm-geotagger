
all: stanford-ner-2014-01-04 metadata.txt bookwormMetadata

stanford-ner-2014-01-04:
	wget http://nlp.stanford.edu/software/stanford-ner-2014-01-04.zip
	unzip stanford-ner-2014-01-04.zip	

metadata.txt:
	cat ../../files/texts/input.txt | parallel  --block-size 1M --pipe ./tagAChunk.sh > metadata.txt

clean:
	rm bookwormMetadata

bookwormMetadata: metadata.txt
	cd ../..; python OneClick.py supplementMetadataFromJSON extensions/geotagger/metadata.txt filename
	touch bookwormMetadata


