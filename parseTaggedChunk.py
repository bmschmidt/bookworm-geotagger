#!/usr/bin/python

import json
import sys
import re

for line in sys.stdin:
    entry = dict()
    entry['filename'] = line.split("\t")[0]
    for key in ["ORGANIZATION","LOCATION","PERSON"]:
        expression = "<" + key + r">([^<]+)</" + key + ">"
        phrases = re.findall(expression,line)
        if len(phrases) > 0:
            #coerce to a set to remove duplicate entries
            entry[key] = list(set(phrases))
    if len(entry) > 1:
        print json.dumps(entry)
