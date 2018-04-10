It seems that in `main2.cpp`, `Parent` is situated before `X` in `Child`.
In `main.cpp`, `X` is before `Parent`. In all cases position of member
variable `x` is calculated correctly and when calling:

    Chind::clone()
    
through pointer to `Parent` than conversion to `Parent*` in return value is done silently.

It would be interesting to see the assembly.