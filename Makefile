.PHONY: dep
dep:
	uv sync --compile-bytecode

.PHONY: dep-clean
dep-clean:
	rm -rf .venv
	rm uv.lock
	uv cache clean spd

.PHONY: clustering-dashboard
clustering-dashboard:
	uv run python -m spd.clustering.dashboard.run \
		--wandb-run goodfire/spd-cluster/runs/j8dgvemf \
		--iteration 7000 \
		--n-samples 32 \
		--n-batches 32 \
		--batch-size 128 \
		--write-html \
		--output-dir docs/
