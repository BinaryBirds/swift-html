SHELL=/bin/bash
# ----------------------------------------
# 	Main
# ----------------------------------------

check:
	./scripts/run-checks.sh

format:
	./scripts/run-swift-format.sh --fix
