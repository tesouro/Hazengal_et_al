#!/usr/bin/env bash
set -e

echo "📦 Installing Dynare.jl ..."

# Make sure the vscode user owns the Julia cache dir
sudo chown -R vscode:vscode /home/vscode/.julia || true

# Install Dynare.jl only if missing (thanks to persistent cache)
if ! julia -e 'using Dynare' &>/dev/null; then
  julia -e 'using Pkg; Pkg.add("Dynare"); Pkg.precompile()'
  echo "✅ Dynare.jl installed successfully."
else
  echo "✅ Dynare.jl already present in cache, skipping install."
fi

echo "🎉 Julia environment ready with Dynare.jl!"
