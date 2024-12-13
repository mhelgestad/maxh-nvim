""" This is Max Test """


def maxs_func(x: int, y: int, name: str, street: str, address: str):
    """Max"""
    print(street)
    print(x + y)
    print(address)
    print(name)


class Max:
    """This is the Max Class"""

    def __init__(self) -> None:
        self.name: str = "Max"
        self.age: int = 26
        self.occupation: str = "engineer"

    def get_age(self) -> int:
        """This gets the age"""
        return self.age

    def get_name(self) -> str:
        """This gets the name"""
        return self.name


maxs_func(6, 4, "test", "test", "test")


max_obj = Max()

print(max_obj.get_age())
