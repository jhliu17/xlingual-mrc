export CUDA_VISIBLE_DEVICES=0

python run_squad_xlm.py --train_file data/SQuAD/train-v1.1.json \
                              --train_lang en \
                              --train_dataset SQuAD \
                              --predict_file data/MLQA/test/test-context-en-question-en.json \
                              --predict_lang en \
                              --predict_dataset MLQA \
                              --model_type xlm \
                              --model_name_or_path model/origin_xlm/xlm-mlm-tlm-xnli15-1024-pytorch_model.bin \
                              --config_name model/origin_xlm/xlm-mlm-tlm-xnli15-1024-config.json \
                              --tokenizer_name model/origin_xlm \
                              --output_dir /data1/jhliu/XLMQA/model/qa_xlm \
                              --model_checkpoint_dir /data1/jhliu/XLMQA/model/qa_xlm/checkpoint-12000 \
                              --fp16 \
                              --do_lower_case \
                              --do_eval
