export CUDA_VISIBLE_DEVICES=0

python run_squad_xlm.py --train_file data/SQuAD/train-v1.1.json \
                              --train_lang en \
                              --train_dataset SQuAD \
                              --predict_file data/MLQA/dev/dev-context-en-question-en.json \
                              --predict_lang en \
                              --predict_dataset MLQA \
                              --model_type xlm \
                              --model_name_or_path model/origin_xlm/xlm-mlm-tlm-xnli15-1024-pytorch_model.bin \
                              --config_name model/origin_xlm/xlm-mlm-tlm-xnli15-1024-config.json \
                              --tokenizer_name model/origin_xlm \
                              --output_dir /data1/jhliu/XLMQA/model/qa_xlm2 \
                              --num_train_epochs 5 \
                              --save_steps 2000 \
                              --evaluate_step 1000 \
                              --learning_rate 3e-5 \
                              --weight_decay 0.005 \
                              --max_grad_norm 5 \
                              --per_gpu_train_batch_size 32 \
                              --gradient_accumulation_steps 2 \
                              --warmup_steps 500 \
                              --fp16 \
                              --do_train \
                              --do_lower_case \
                              --overwrite_output_dir \
                              --evaluate_during_training \
