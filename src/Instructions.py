


class UnaryInstruction:

    def __init__(self, tokens):
        self.tokens = tokens

        if self:
            print("yes")
        else:
            print("No")
    def __bool__(self):
        return len(self.tokens) == 2


unary = UnaryInstruction([1,2,3])
if unary:
    print("Yes")
else:
    print("No")
