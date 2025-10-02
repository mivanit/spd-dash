.PHONY: dep
dep:
	uv sync --compile-bytecode

.PHONY: clustering-dashboard
clustering-dashboard:
	uv run python -m spd.clustering.dashboard.run \
		--wandb-run goodfire/spd-cluster/runs/j8dgvemf \
		--iteration 7000 \
		--n-samples 32 \
		--n-batches 4 \
		--batch-size 128 \
		--output-dir docs/
