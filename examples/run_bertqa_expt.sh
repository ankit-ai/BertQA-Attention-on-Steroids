export SQUAD_DIR=data
rm -rf run_txskip_expt_name
export OPDIR=run_txskip_expt_name
python run_squad.py \
  --bert_model bert-base-uncased \
  --do_train \
  --do_predict \
  --do_lower_case \
  --train_file $SQUAD_DIR/train-v2q.json \
  --predict_file $SQUAD_DIR/dev-v2.0.json \
  --train_batch_size 8 \
  --learning_rate 3e-5 \
  --num_train_epochs 2.0 \
  --max_seq_length 512 \
  --doc_stride 128 \
  --output_dir $OPDIR/ \
  --version_2_with_negative 
python eval.py data/dev-v2.0.json $OPDIR/predictions.json > $OPDIR/$OPDIR.txt
