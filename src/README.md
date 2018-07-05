## How to extend the VM Translator to include new commands
    * Create a new class .py in /src/
    * Import Instruction to that .py file
    * That class, call it A, must inherit from the class Instruction
    * Provide an __operators__ list that would be used to locate A by the class factory function in VMTranslator.py
    * Provide a method @property named template that returns the string that support __string interpolation__ that is given by self.replace_dict
