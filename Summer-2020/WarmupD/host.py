import json

import qsharp
qsharp.packages.add("Microsoft.Quantum.MachineLearning::0.11.2006.403")
qsharp.reload()
print()

from Microsoft.Quantum.Samples import (TrainModel, ValidateModel, ClassifyModel)


def main():

  # D1 uses training_data1.json
  with open('training_data2.json') as f:
    data = json.load(f)

  parameter_starting_points = [
    [1.0], [0.0]  # i have no idea what these do...STILL
  ]

  (parms, bias) = TrainModel.simulate(
    trainingVectors=data['Features'],
    trainingLabels=data['Labels'],
    initialParameters=parameter_starting_points
  )
  print('parms: ' + str(parms) + '\n' + 'bias:  ' + str(bias))

  miss_rate = ValidateModel.simulate(
    validationVectors=data['Features'],
    validationLabels=data['Labels'],
    parameters=parms, 
    bias=bias
  )

  print(f"miss rate: {miss_rate:0.2%}")

if __name__ == "__main__": main()