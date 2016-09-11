#!/usr/bin/env sh

diff="$(find . ! \( -path './vendor' -prune \) -type f -name '*.go' -print0 | xargs -0 gofmt -d -l )"

if [ -n "$diff" ]; then
	echo "Unformatted Go source code:"
	echo "$diff"
	exit 1
fi

exit 0
