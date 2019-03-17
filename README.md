# BertQA - Attention on Steroids
#### Developers - Ankit Chadha (ankitrc@stanford.edu) Rewa Sood (rrsood@stanford.edu)
--------
This repository is based off Hugging face's [PyTorch BERT implementation](https://github.com/huggingface/pytorch-pretrained-BERT)

This was done as part of CS224n: Natural Language Processing with Deep Learning - Stanford / Winter 2019 class project.
At the time of submission, we were #1 on the class's SQuAD Leaderboard.

![BERTQA Meme](https://github.com/ankit-ai/BertQA-Attention-on-Steroids/blob/master/img/meme.png =250x250 "BERTQA - Attention on Steroids Meme")

### Abstract
--------
In this work, we extend the Bidirectional Encoder Representations from Transformers (BERT) with an emphasis on directed coattention to obtain an improved F1 performance on the SQUAD2.0 dataset. The Transformer architecture on which BERT is based places hierarchical global attention on the concatenation of the context and query. Our additions to the BERT architecture augment this attention with a more focused context to query and query to context attention via a set of modified Transformer encoder units. In addition, we explore adding convolution based feature extraction within the coattention architecture to add localized information to self-attention. The base BERT architecture with no SQUAD2.0 specific finetuning produces results with an F1 of 74. We found that coattention significantly improves the no answer F1 by 4 points while causing a loss in the has answer F1 score by the same amount. After adding skip connections the no answer F1 improved further without causing an additional loss in has answer F1. The addition of localized feature extraction added to attention produced the best results with an overall dev F1 of 77.03 due to a marked improvement in the has answer F1 score. We applied our findings to the large BERT model which contains twice as many layers and further used our own augmented version of the SQUAD 2.0 dataset created by back translation. Finaly, we performed hyperparameter tuning and ensembled our best models for a final F1/EM of 82.148/79.239 (Attention on Steroids, PCE Test Leaderboard).

### Neural Architecture
--------
Here is an overview of our network architecture 
![BERTQA](https://github.com/ankit-ai/BertQA-Attention-on-Steroids/blob/master/img/bert.png "BERTQA - Attention on Steroids")

### Dataset (SQuAD 2.Q)
--------
We use an augmented version of the SQuAD 2.0 dataset based on the concept of Back Translation. You can download the dataset [here](https://github.com/ankit-ai/SQUAD2.Q-Augmented-Dataset).

To read more on the process of Back Translation you can refer [this resource](http://ankit-ai.blogspot.com/2019/03/future-of-natural-language-processing.html)

### Command Lines
--------
This repository has command line bash files with the optimal hyperparameters our network was tuned for. 
```
1. Sanity Check 
#Launch a debug run on 1 example out of the SQuAD 2.0 training set - Beyonce paragraph 
examples/rundbg.sh

2. Train on SQuAD 2.Q
#Fine tunes BERT layers on SQuAD 2.Q and trains additional directed co-attention layers.
run_bertqa_expt.sh

3. Train on SQuAD 2.0
#Fine tunes BERT embedding layers on SQuAD 2.0 and trains additional directed co-attention layers.
examples/run_bertqa.sh
```

Refer to the paper for more details on our hyperparameters chosen.
