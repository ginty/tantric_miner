# This is the top-level executable
require "./tantric_miner/version"
require "./tantric_miner/cli"
require "./tantric_miner/gpus"

TantricMiner::CLI.run
