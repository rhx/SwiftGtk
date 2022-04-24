s/\(([a-z_]*ptr)\)/(ptrCast\1)/
s/\(([a-z_]*ptr\),/(ptrCast\1),/
s/\(_node_.*ptrCast.\)\(ptr\)/\1node.\2/
