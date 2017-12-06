CONFIG=performance

performance_rnn_generate \
--run_dir=/tmp/performance_rnn/logdir/run1 \
--output_dir=/tmp/performance_rnn/generated \
--config=${CONFIG} \
--num_outputs=10 \
--num_steps=3000 \
--primer_melody="[60]"
