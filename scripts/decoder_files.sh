#!/bin/bash

set -e  # Exit on error

DATA_PT="../data/librispeech-lm-norm.txt"
N_GRAM=3

##############################################################################
# Run KENLM
##############################################################################

# wget -O - https://kheafield.com/code/kenlm.tar.gz | tar xz
# mkdir kenlm/build && cd kenlm/build && cmake .. && make -j2
# cd ../..
mkdir ../lm/

echo "Building LM..."
kenlm/build/bin/lmplz -o $N_GRAM < $DATA_PT > ../lm/$N_GRAM"gram.arpa"

##############################################################################
# Create lexicon
##############################################################################

echo "Building lexicon..."
python3 generate_lexicon.py --data $DATA_PT
echo"Lexicon in ../lm/$N_GRAMgram.arpa"
