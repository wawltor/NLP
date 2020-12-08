export CUDA_VISIBLE_DEVICES=3
export PYTHONPATH=/Paddle/NLP
export DATA_DIR=./data

python ./run_pretrain_single.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --max_predictions_per_seq 20 \
    --batch_size 16   \
    --learning_rate 1e-4 \
    --weight_decay 1e-2 \
    --adam_epsilon 1e-6 \
    --warmup_steps 10000 \
    --input_dir $DATA_DIR \
    --output_dir ./tmp3/ \
    --logging_steps 1 \
    --save_steps 20000 \
    --max_steps 1000000 \
    --use_amp=true \
    --gradient_merge_steps 2\

