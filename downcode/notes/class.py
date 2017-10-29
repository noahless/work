class A:
    num1=0
    num2=0
    
    def __init__(self):
        self.num1 = 100
        self.__num2 = 200

    def f1(self):
        print("--------f1----------")
            
    def __f2(self):
        print("--------f2----------")

class B(A):
    def f3(self):
        print("--------f3---------")
        A.f1(self)
        #B.f1(self)

b = B()
b.f3()

#print(b.num1)
#print(b.num2)
