#!/bin/bash

source /nexus/docker/env.sh

#Fix test order in pytest
/nexus/bin/nexus-test && pytest-3 tests/pytest/macros_test.py tests/pytest/produce_output_test.py tests/pytest/persistency_test.py tests/pytest/sensitive_detectors_test.py
