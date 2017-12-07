# Generates the melody from the checkpoints from the model training.
melody_rnn_generate \
--run_dir=/.out/melody_rnn/logdir/run1 \
--output_dir=./out/melody_rnn/generated \
--config=basic_rnn \
# How many midis to generate
--num_outputs=10 \
# How many steps in the music
--num_steps=128 \
# The melody to prime the generation with. This is middle C.
--primer_melody="[60]"
