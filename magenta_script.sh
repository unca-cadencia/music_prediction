# Converts the midis into a protocol buffer format.
convert_dir_to_note_sequences \
--input_dir=./midis \
--output_file=.out/notesequences.tfrecord \
--recursive

# Creates the data set relevant to generating melodies.
melody_rnn_create_dataset \
# the basic_rnn has no frills
--config=basic_rnn \
--input=.out/notesequences.tfrecord \
--output_dir=.out/melody_rnn/sequence_examples \
# The ratio of data to use for evaluation
--eval_ratio=0.10

# Trains the RNN model. This training runs forever generating checkpoints as it runs.
# The check points are used by the generation script.
melody_rnn_train \
--config=basic_rnn \
--run_dir=.out/melody_rnn_train/logdir/run1 \
--sequence_example_file=./out/melody_rnn/sequence_examples/training_melodies.tfrecord
