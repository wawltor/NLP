export CUDA_VISIBLE_DEVICES=0
export export PYTHONPATH=/Paddle/NLP
export TASK_NAME=SST-2

python -u ./run_glue.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --task_name $TASK_NAME \
    --max_seq_length 128 \
    --batch_size 64   \
    --learning_rate 2e-5 \
    --num_train_epochs 3 \
    --logging_steps 20 \
    --save_steps 500 \
    --output_dir ./tmp/$TASK_NAME/ \
    --use_fp16=true \
    --scale_loss=128.0 \
    --use_dynamic_loss_scaling=true \
    --use_amp=true \
