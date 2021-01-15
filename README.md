# Cross-lingual Machine Reading Comprehension

A simple benchmark project to evaluate cross-lingual machine reading comprehension tasks on MLQA, XQuAD dataset. The backbone language model is based on Hugging Face's XLM.

## Requirements

- pytorch >= 1.4
- transformers >= 2.5.1
- jieba

## Dataset

- [SQuAD 1.1](https://github.com/rajpurkar/SQuAD-explorer/tree/master/dataset) (only in En, train and dev)
- [MLQA](https://github.com/facebookresearch/MLQA) (7 languages, dev and test)
- [XQuAD](https://github.com/deepmind/xquad) (11 languages, test)

## Run

Train (the default parameter setting has been hardcoded in the `train.sh` file)

```
sh train.sh
```
Evaluate
```
sh eval.sh
```


## Performance

We evaluate the performance of our project on the MLQA dataset. The results compared with the [original paper](https://arxiv.org/abs/1910.07475) are shown as bellow.

|  EM / F1 | En | Es | De | Ar | Hi | Vi | Zh |
| --| --| --| --| --| --| --| --|
| Paper results| 62.4 / 74.9 | 49.8 / 68.0 | 47.6 / 62.2 | 36.3 / 54.8 | 27.3 / 48.8 | 41.8 / 61.4 | 39.6 / 61.1 |
| Ours| 63.4 / 77.4 | 49.7 / 68.2 | 48.6 / 63.7 | 37.6 / 57.0 | 37.0 / 54.3 | 42.4 / 63.5 | 36.9 / 60.0 |


## Citation

If you use our code in your work, please cite as:

```
@inproceedings{liu2020cross,
  title={Cross-lingual Machine Reading Comprehension with Language Branch Knowledge Distillation},
  author={Liu, Junhao and Shou, Linjun and Pei, Jian and Gong, Ming and Yang, Min and Jiang, Daxin},
  booktitle={Proceedings of the 28th International Conference on Computational Linguistics},
  pages={2710--2721},
  year={2020}
}
```
