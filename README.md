bookworm-geotagger
==================

Geotagging bookworm extension based on Stanford NER

This builds a metadata file listing the people, places, and orgs recognized by the Stanford NER plugin.

Mitch Fraas sent me a line of Stanford NER code, and I've built it up around that.

Later, we may try to integrate in his work on **geolocation** as well as **geotagging,**
but that might be separate repository so that it can also be applied to other sorts of data (publisher 
place information, for example.)

The Bookworm input format that this works with is identical to the single file MALLET format:
so this may be useful for people who want to transparently drop some NER into the metadata
for their MALLET work as well.
