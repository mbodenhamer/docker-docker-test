#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check Bats version" {
    run bats
    [[ ${lines[0]} == "Bats 0.4.0" ]]
}
