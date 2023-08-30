(cd terra && cargo-bundle-licenses --format yaml --output ../THIRDPARTY.yml)
${PYTHON} -m pip install --no-deps --no-build-isolation ./terra -vv
