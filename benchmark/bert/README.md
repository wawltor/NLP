# BERT Benchmark with Fleet API

```shell
先配置运行环境
export PYTHONPATH=/home/fangzeyang/PaddleNLP
export DATA_DIR=/home/fangzeyang/bert_data/wikicorpus_en

1. 如果是需要多单机多卡/多机多卡训练，则使用下面的命令进行训练
fleetrun --gpus 0,1,2,3 ./run_pretrain.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --max_predictions_per_seq 20 \
    --batch_size 32   \
    --learning_rate 1e-4 \
    --weight_decay 1e-2 \
    --adam_epsilon 1e-6 \
    --warmup_steps 10000 \
    --input_dir $DATA_DIR \
    --output_dir ./tmp2/ \
    --logging_steps 1 \
    --save_steps 20000 \
    --max_steps 100000000

2. 如果是需要单机单卡训练，则使用下面的命令进行训练
export CUDA_VISIBLE_DEVICES=0
python ./run_pretrain_single.py \
    --model_type bert \
    --model_name_or_path bert-base-uncased \
    --max_predictions_per_seq 20 \
    --batch_size 32   \
    --learning_rate 1e-4 \
    --weight_decay 1e-2 \
    --adam_epsilon 1e-6 \
    --warmup_steps 10000 \
    --input_dir $DATA_DIR \
    --output_dir ./tmp2/ \
    --logging_steps 1 \
    --save_steps 20000 \
    --max_steps 100000000
```
