from parser import ReutersParser
import os 

files = os.listdir('.')

for f in files:
    if f.endswith('sgm'):
        text = ''
        with open(f, 'rb') as input_file:
            for line in input_file:
                line = line.decode('latin-1')
                text += line
        parser = ReutersParser()
        parser.feed(text)
        pos = 0
        neg = 0
        for doc in parser:
            if 'acq' in doc['TOPICS']:
                pos += 1
            else:
                neg += 1
        print(f, pos, neg)

