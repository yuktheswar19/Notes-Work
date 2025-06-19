class reverse:
    
    def __init__(self, name):
        
        self.name = name 
        
    def string(self):
        self.char = list(self.name)
        
        for value in self.char:
            self.char = self.char[::-1]
            return ''.join(self.char)
        
        
        
if __name__ == '__main__':
    
    name = reverse('hi my name is yuktheswar')
    print(name.string())