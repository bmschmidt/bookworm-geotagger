#! /bin/bash

#Make a temp file:
tmpfile=$(mktemp tmp.XXXXXXX)

#Write what we're tagging to it
while read data; do
    echo "$data" >> $tmpfile
done

#Parse the tmpfile and feed it through a python script to pull out the elements
java -mx800m -cp stanford-ner-2014-01-04/stanford-ner.jar edu.stanford.nlp.ie.crf.CRFClassifier -loadClassifier stanford-ner-2014-01-04/classifiers/english.all.3class.distsim.crf.ser.gz -textFile $tmpfile  -outputFormat inlineXML | python parseTaggedChunk.py

rm $tmpfile



