cd terra && cargo-bundle-licenses --format yaml --output ../THIRDPARTY.yml
${PYTHON} -m pip install ./terra -vv
