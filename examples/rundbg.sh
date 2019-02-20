export SQUAD_DIR=data
rm -rf decoder_debug_squad
python run_squad.py \
  --bert_model bert-base-uncased \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/train_small.json \
  --predict_file $SQUAD_DIR/dev-v2.0.json \
  --train_batch_size 1 \
  --learning_rate 3e-5 \
  --num_train_epochs 1.0 \
  --max_seq_length 384 \
  --doc_stride 128 \
  --output_dir decoder_debug_squad/ \
  --version_2_with_negative
