

class MetaCls(type):
    register = {}
    def __new__(cls, name, bases, local_dict):
        print(name)
        result = type.__new__(cls, name, bases, local_dict)
        MetaCls.register[result.x] = result
        return result

class Parent(metaclass = MetaCls):
    x = -1
class Child(Parent):
    x = 0


print(MetaCls.register)
