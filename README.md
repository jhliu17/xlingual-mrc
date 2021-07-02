# Cross-lingual Machine Reading Comprehension

A benchmark project to evaluate cross-lingual machine reading comprehension tasks on MLQA and XQuAD datasets. The backbone language model is adopted from HuggingFace XLM.


## Requirements

- PyTorch >= 1.4
- transformers >= 2.5.1
- jieba


## Datasets

- [SQuAD 1.1](https://github.com/rajpurkar/SQuAD-explorer/tree/master/dataset) (only in En, train and dev)
- [MLQA](https://github.com/facebookresearch/MLQA) (7 languages, dev and test)
- [XQuAD](https://github.com/deepmind/xquad) (11 languages, test)


## Run

Train (the default parameter setting is hardcoded in the `train.sh` file)

```
sh train.sh
```

Evaluate
```
sh eval.sh
```


## Performance

We evaluate the performance on the MLQA dataset. The results compared with the [original paper](https://arxiv.org/abs/1910.07475) are shown as bellow.

### Exact Match

| EM | En | Es | De | Ar | Hi | Vi | Zh |
| -- | -- | -- | -- | -- | -- | -- | -- |
| Paper results | 62.4 | 49.8 | 47.6 | 36.3 | 27.3 | 41.8 | 39.6 |
| Ours | 63.4 | 49.7 | 48.6 | 37.6 | 37.0 | 42.4 | 36.9 |

### F1 Score
| F1 | En | Es | De | Ar | Hi | Vi | Zh |
| -- | -- | -- | -- | -- | -- | -- | -- |
| Paper results | 74.9 | 68.0 | 62.2 | 54.8 | 48.8 | 61.4 | 61.1 |
| Ours | 77.4 | 68.2 | 63.7 | 57.0 | 54.3 | 63.5 | 60.0 |


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
