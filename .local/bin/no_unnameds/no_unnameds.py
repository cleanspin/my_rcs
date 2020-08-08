#!/bin/python

import os
import pandas as pd

notebook_directories = pd.read_csv('notebook_directories.csv', header=None)
notebook_directories = list(notebook_directories[0])
notebook_directories = [d[2:] for d in notebook_directories]
print(notebook_directories)

os.chdir('../../..')

for f in notebook_directories:
    unnameds = ['~/'+f+'/'+s for s in os.listdir(f) if s.startswith('Unnamed')]
    for x in unnameds:
        response = "notify-send \'the file " + x + " needs your atention. Avoid piling unnameds.\'"
        #print(response)
        os.system(response)
