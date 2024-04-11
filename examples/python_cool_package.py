'''
Priklad na monkey patching v pythonu
Spuste python3 -i python_cool_package.py
Pokud zkusite pouzit metodu addition, dostanete Exception
>>> obj = MonkeyPatch(10)
>>> obj.addition(20) # Exception
Toto nechtene chovani muzete prepsat za behu
>>> def addition(self, other):
>>>   return self.num + other
>>> MonkeyPatch.addition = addition
>>> obj.addition(32) 
Nyni jiz dostanete ocekavany vysledek
'''

class MonkeyPatch:
  def __init__(self, num):
    self.num = num

  def addition(self, other):
    raise Exception('Something went wrong', self.num, other)
