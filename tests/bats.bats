#!/usr/bin/env bats
load test_helpers

@test "[$TEST_FILE] Check Bats installed" {
    run bats
    [[ ${lines[0]} =~ "Bats" ]]
}
