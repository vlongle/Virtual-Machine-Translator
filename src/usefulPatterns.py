

'''
We can "register" a dictionary of function
by using DECORATOR with arguments.
'''

event_handlers = {}

def eventhandler(event):
    def register(func):
        event_handlers[event] = func
        return func
    return register


@eventhandler('BUTTON')
def handle_button(msg):
    pass


@eventhandler('RESET')
def handle_reset(msg):
    pass


#print(event_handlers)



class_name = "Foo"

class_parents = (object,)
class_body = '''
def __init__(self,x):
    self.x = x
def blah(self):
    print("Hello")
'''

class_dict = {}

exec(class_body, globals(), class_dict)


class B:
    def __init__(self, num):
        self.num = num


class A:
    def __init__(self, num):
        self.num = num

    def __new__(cls, num):
        print("Calling new")
        if num > 10:
            return B
        else:
            result = super().__new__(cls)
            print(result)
            return result


print("try __new__")
a = A(1)
print(a)
