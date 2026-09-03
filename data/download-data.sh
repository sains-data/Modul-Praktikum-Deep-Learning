#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
mkdir -p "$SCRIPT_DIR/raw" "$SCRIPT_DIR/processed" "$SCRIPT_DIR/sample"

if [[ "${1:-}" != "--vision" ]]; then
  echo "Direktori data siap di: $SCRIPT_DIR"
  echo "Gunakan '$0 --vision' untuk mengunduh Fashion-MNIST dan CIFAR-10."
  exit 0
fi

python - "$SCRIPT_DIR/raw" <<'PY'
from pathlib import Path
import sys
from torchvision.datasets import CIFAR10, FashionMNIST

root = Path(sys.argv[1])
for dataset in (FashionMNIST, CIFAR10):
    dataset(root=root, train=True, download=True)
    dataset(root=root, train=False, download=True)
print(f"Dataset vision tersedia di {root}")
PY
