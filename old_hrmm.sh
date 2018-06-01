#¡/bin/bash
prefix="old_"
for filename in *; do mv "$filename" "$prefix$filename"; done;
