package_root="$(python -c 'import qiskit; from pathlib import Path; print(Path(qiskit.__file__).parent)')"
for so_file in "${package_root}"/*.so; do
    # Use python -m to work around https://github.com/conda-forge/abi3audit-feedstock/pull/5
    python -m abi3audit --assume-minimum-abi3=3.8 "$so_file"
done
