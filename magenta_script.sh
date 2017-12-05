INPUT_DIRECTORY=./midis

CONFIG=performance

SEQUENCES_TFRECORD=./tmp/notesequences.tfrecord

convert_dir_to_note_sequences --input_dir=$INPUT_DIRECTORY --output_file=$SEQUENCES_TFRECORD --recursive

performance_rnn_create_dataset --config=$CONFIG --input=$SEQUENCES_TFRECORD --output_dir=./tmp/performance_rnn/sequence_examples --eval_ratio=0.10

performance_rnn_train --config=$CONFIG --run_dir=./tmp/performance_rnn_train/logdir/run1 --sequence_example_file=./tmp/performance_rnn/sequence_examples/training_performances.tfrecord

performance_rnn_train --config=$CONFIG --run_dir=./tmp/performance_rnn_train/logdir/run1 --sequence_example_file=./tmp/performance_rnn/sequence_examples/training_performances.tfrecord --eval
