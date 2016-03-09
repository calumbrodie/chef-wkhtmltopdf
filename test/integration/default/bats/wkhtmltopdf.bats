#!/usr/bin/env bats

@test "does wkhtmltopdf exist" {
    run /usr/local/bin/wkhtmltopdf --version
    [ "$output" = "wkhtmltopdf 0.12.2 (with patched qt)" ]
}
