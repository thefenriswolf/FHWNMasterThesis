from decimal import Decimal, Context, localcontext

# Displays with default precision of 28 digits
v = Decimal("578")
print(v.sqrt())

with localcontext(Context(prec=16)):
    # All code in this block uses a precision of 16 digits.
    # The original context is restored on exiting the block.
    print(v.sqrt())
