""" Official evaluation script for MLQA version 1.0.
"""
import json

from src.mlqa_evaluation_v1 import evaluate

class MLQA_EVAL_OPTS(object):
  def __init__(self, dataset_file, prediction_file, answer_language,
               out_file="", na_prob_file="na_prob.json", na_prob_thresh=1.0,
               out_image_dir=None, verbose=False):
    self.dataset_file = dataset_file
    self.prediction_file = prediction_file
    self.answer_language = answer_language
    self.out_file = out_file
    self.na_prob_file = na_prob_file
    self.na_prob_thresh = na_prob_thresh
    self.out_image_dir = out_image_dir
    self.verbose = verbose


def evaluate_on_mlqa(OPTS):
    expected_version = '1.0'
    with open(OPTS.dataset_file) as dataset_file:
        dataset_json = json.load(dataset_file)
        if (str(dataset_json['version']) != expected_version):
            print('Evaluation expects v-' + expected_version +
                  ', but got dataset with v-' + dataset_json['version'],
                  file=sys.stderr)
        dataset = dataset_json['data']
    with open(OPTS.prediction_file) as prediction_file:
        predictions = json.load(prediction_file)

    result = evaluate(dataset, predictions, OPTS.answer_language)
    return result