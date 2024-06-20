cd "${CONDA_PREFIX}/bin"
versioned_python=""
for name in python3.*; do
    # Guard against no glob matches (which should never happen because python needs to be installed)
    [ -e "$name" ] || continue

    if [ -f "$name" ] && [[ "$name" =~ ^python3"."[[:digit:]]+$ ]]; then
        versioned_python="$name"
    fi
done

if [ -n "$versioned_python" ]; then
    ln -s ../../python3.8/site-packages/qiskit "${CONDA_PREFIX}/lib/${versioned_python}/site-packages/qiskit"
fi
