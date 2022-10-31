# Prepare files for ctc_decoder

## Data

Text to generate the LM and lexicon should be in `data`.

## Usage

```bash
cd scripts
bash decoder_files.sh
```

Different n-gram models can be created by changing the `DATA_PT` and `N_GRAM` parameters in this script.
