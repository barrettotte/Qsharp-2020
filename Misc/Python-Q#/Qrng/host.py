import qsharp
from Qrng import SampleQuantumRandomNumberGenerator

max = 50
output = max + 1

while output > max:
  bit_string = []

  for i in range(0, max.bit_length()):
    bit_string.append(SampleQuantumRandomNumberGenerator.simulate())
  output = int(''.join(str(x) for x in bit_string), 2)

print('Generated random number: ' + str(output))
