export SQUAD_DIR=data
python run_squad.py \
  --bert_model bert-large-uncased \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/train-v2.0.json \
  --predict_file $SQUAD_DIR/dev-v2.0.json \
  --train_batch_size 6 \
  --learning_rate 3e-5 \
  --num_train_epochs 2.0 \
  --max_seq_length 512 \
  --doc_stride 128 \
  --output_dir run_squad_freeze_2e/ \
  --version_2_with_negative
