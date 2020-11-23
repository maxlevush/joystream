#!/usr/bin/env bash

# Executes and replaces all benchmarks with the new weights

echo "Benchmarking proposals_discussion..."
./target/debug/joystream-node benchmark --pallet=proposals_discussion --extrinsic=* --chain=dev --steps=50 --repeat=20 --execution=wasm --output=. > /dev/null
mv proposals_discussion.rs runtime/src/weights/
echo "proposals_discussion benchmarked"


echo "Benchmarking proposals_engine..."
./target/debug/joystream-node benchmark --pallet=proposals_engine --extrinsic=* --chain=dev --steps=50 --repeat=20 --execution=wasm --output=. > /dev/null
mv proposals_engine.rs runtime/src/weights/
echo "proposals_engine benchmarked"
