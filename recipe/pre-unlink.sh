for name in "${CONDA_PREFIX}"/lib/python3.*/site-packages/qiskit; do
    if [ -L "$name" ]; then
        rm "$name"
    fi
done
